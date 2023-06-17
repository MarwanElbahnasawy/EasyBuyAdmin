//
//  MockNetworkManagerMethods.swift
//  EasyBuyAdminTests
//
//  Created by Marwan Elbahnasawy on 17/06/2023.
//

import Foundation
import Apollo
@testable import EasyBuyAdmin

extension MockNetworkManager: NetworkManaging {
    
    var service: ApolloClient {
        get { return _service }
        set { _service = newValue }
    }
    
    func queryGraphQLRequest<T, K>(query: T, responseModel: K.Type, completion: @escaping ((Result<K, Error>) -> Void)) where T : Apollo.GraphQLQuery, K : Decodable, K : Encodable {
        do {
            let decodedData = try JSONDecoder().decode(K.self, from: jsonResponse)
            completion(.success(decodedData))
        } catch let error {
            completion(.failure(error))
        }
    }
    
    func performGraphQLRequest<T, K>(mutation: T, responseModel: K.Type, completion: @escaping ((Result<K, Error>) -> Void)) where T : Apollo.GraphQLMutation, K : Decodable, K : Encodable {
        
    }
    
    func queryAllProducts(completion: @escaping (Result<AllProductsRoot, Error>) -> Void) {
        jsonResponse = Data(MockNetworkManager.allProductsResponse.utf8)
        MockNetworkManager.shared.queryGraphQLRequest(query: GetAllProductsQuery(), responseModel: AllProductsRoot.self) { (result: Result<AllProductsRoot, Error>) in
            switch result {
            case .success(let decodedData):
                completion(.success(decodedData))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func queryAllCollections(completion: @escaping (Result<AllCollectionsRoot, Error>) -> Void) {
        jsonResponse = Data(MockNetworkManager.allCollectionsResponse.utf8)
        MockNetworkManager.shared.queryGraphQLRequest(query: GetAllCollectionsQuery(), responseModel: AllCollectionsRoot.self) { (result: Result<AllCollectionsRoot, Error>) in
            switch result {
            case .success(let decodedData):
                completion(.success(decodedData))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func queryAllDiscountCodes(completion: @escaping (Result<AllDiscountCodesRoot, Error>) -> Void) {
        jsonResponse = Data(MockNetworkManager.allDiscountCodesResponse.utf8)
        MockNetworkManager.shared.queryGraphQLRequest(query: GetAllDiscountCodesQuery(), responseModel: AllDiscountCodesRoot.self) { (result: Result<AllDiscountCodesRoot, Error>) in
            switch result {
            case .success(let decodedData):
                completion(.success(decodedData))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}

