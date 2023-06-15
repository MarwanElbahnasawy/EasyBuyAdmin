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
    @Published var currentAlert: AlertType = .disabledAlert
    
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
            case .success:
                NetworkManager.shared.service.store.clearCache()
                completion(.success("Collection created successfully"))
            case .failure(let error):
                completion(.failure(error))
            }
        }
        )
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


