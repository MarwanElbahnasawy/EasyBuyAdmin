//
//  CollectionFormViewModel.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 16/06/2023.
//

import Foundation

import Foundation
import Apollo

class CollectionFormViewModel: ObservableObject {
    @Published var alertTitle = ""
    @Published var alertMessage = ""
    
    @Published var title: String = ""
    @Published var description: String = ""
    @Published var collectionImageURLString: String = ""
    @Published var currentAlert: AddingOrUpdatingAlertType = .disabledAlert
    
    @Published var isCollectionBeingUpdated = false
    
    private var collectionID: String?
    
    init(collection: CollectionNode? = nil) {
        if let collection = collection {
            collectionID = collection.id!
            title = collection.title ?? "Unknown"
            description = collection.description ?? "No description"
            collectionImageURLString = collection.image?.url ?? "https://t4.ftcdn.net/jpg/03/00/32/13/360_F_300321387_gPEMsHdZPAWO2HfqfwEXUfy5MwPvq8AM.jpg"
            isCollectionBeingUpdated = true
        }
    }
    
    func addCollection(completion: @escaping () -> Void) {
        
        let newCollectionInput = CollectionInput(descriptionHtml: description, image: ImageInput.init(src: collectionImageURLString),  title: title)
        
        createCollection(collectionInput: newCollectionInput) { result in
            switch result {
            case .success:
                self.alertTitle = "Success"
                self.alertMessage = "Collection added successfully"
                completion()
            case .failure(let error):
                self.alertTitle = "Error"
                self.alertMessage = error.localizedDescription
                completion()
            }
        }
    }
    
    private func createCollection(collectionInput: CollectionInput, completion: @escaping (Result<String, Error>) -> Void) {
        NetworkManager.shared.performGraphQLRequest(mutation: CollectionCreateMutation(input: collectionInput), responseModel: DataClassCollectionCreate.self, completion: { result in
            switch result {
            case .success(let successResult):
                self.publishCollectionToStore(collectionID: (successResult.collectionCreate?.collection?.id)!) { result in
                    NetworkManager.shared.service.store.clearCache()
                    completion(.success("Collection created successfully"))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
        )
    }
    
    func updateCollection(colelctionID: String, completion: @escaping () -> Void) {
        
        let newCollectionInput = CollectionInput(descriptionHtml: description, id: collectionID, image: ImageInput.init(src: collectionImageURLString),  title: title)
        
        updateCollection(collectionInput: newCollectionInput) { result in
            switch result {
            case .success:
                self.alertTitle = "Success"
                self.alertMessage = "Collection updated successfully"
                completion()
            case .failure(let error):
                self.alertTitle = "Error"
                self.alertMessage = error.localizedDescription
                completion()
            }
        }
    }
    
    private func updateCollection(collectionInput: CollectionInput, completion: @escaping (Result<String, Error>) -> Void) {
        
        NetworkManager.shared.performGraphQLRequest(mutation: CollectionUpdateMutation(input: collectionInput), responseModel: DataClassCollectionUpdate.self, completion: { result in
            switch result {
            case .success(let successResult):
                self.publishCollectionToStore(collectionID: (successResult.collectionUpdate?.collection?.id)!) { result in
                    NetworkManager.shared.service.store.clearCache()
                    completion(.success("Collection updated successfully"))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
        )
    }
    
    private func publishCollectionToStore(collectionID: String, completion: @escaping (Result<Void, Error>) -> Void) {
        NetworkManager.shared.performGraphQLRequest(mutation: PublishablePublishToCurrentChannelMutation(id: collectionID), responseModel: PublishItemDataClass.self) { result in
            switch result {
            case .success:
                completion(.success(()))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func isValidImageURL(_ urlString: String) -> Bool {
        guard let url = URL(string: urlString) else {
            return false
        }
        let imageTypes: [String] = ["jpg", "jpeg", "png"]
        let ext = url.pathExtension.lowercased()
        if imageTypes.contains(ext) && url.scheme == "https" {
            return true
        }
        return false
    }
}


