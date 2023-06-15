//
//  NetworkManager.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import Foundation
import Apollo

final class NetworkManager: NetworkManaging {
    static let shared: NetworkManager = .init()

    private lazy var _service: ApolloClient = {
        let store = ApolloStore()
        let client = URLSessionClient()
        let provider = NetworkInterceptorProvider(store: store, client: client)
        let url = URL(string: Constants.baseUrl)!

        let requestChainTransport = RequestChainNetworkTransport(interceptorProvider: provider, endpointURL: url)

        return ApolloClient(networkTransport: requestChainTransport, store: store)
    }()

    var service: ApolloClient {
        get { return _service }
        set { _service = newValue }
    }

    func queryGraphQLRequest<T: GraphQLQuery, K: Codable>(query: T, responseModel: K.Type, completion: @escaping ((Result<K, Error>) -> Void)) {
        NetworkManager.shared.service.fetch(query: query) { result in
            switch result {
            case .success(let apolloResponse):
                do {
                    if let dataObject = apolloResponse.data?.jsonObject {
                        let data = try JSONSerialization.data(withJSONObject: dataObject, options: .fragmentsAllowed)
                        let decodedData = try JSONDecoder().decode(responseModel, from: data)
                        completion(.success(decodedData))
                    }
                } catch (let error) {
                    print("Error decoding data: \(error)")
                    completion(.failure(error))
                }
            case .failure(let error):
                print("Failure! Error: \(error)")
                completion(.failure(error))
            }
        }
    }
    
    func performGraphQLRequest<T, K>(mutation: T, responseModel: K.Type, completion: @escaping ((Result<K, Error>) -> Void)) where T : GraphQLMutation, K : Decodable, K : Encodable {
        NetworkManager.shared.service.perform(mutation: mutation) { result in
            switch result {
            case .success(let apolloResponse):
                do {
                    if let dataObject = apolloResponse.data?.jsonObject {
                        let data = try JSONSerialization.data(withJSONObject: dataObject, options: .fragmentsAllowed)
                        let decodedData = try JSONDecoder().decode(responseModel, from: data)
                        let userErrors: [UserError]?
                        switch decodedData {
                            case let data as DataClassProductCreation:
                                userErrors = data.productCreate?.userErrors
                            case let data as DataClassProductDeletion:
                                userErrors = data.productDelete?.userErrors
                            case let data as DataClassProductUpdate:
                                userErrors = data.productUpdate?.userErrors
                            case let data as DataClassDiscountCodeCreate:
                                userErrors = data.discountCodeBasicCreate?.userErrors
                            case let data as DataClassDiscountCodeUpdate:
                                userErrors = data.discountCodeBasicUpdate?.userErrors
                            case let data as DataClassDiscountCodeDeletion:
                                userErrors = data.discountCodeDelete?.userErrors
                            default:
                                userErrors = nil
                            }
                        if let userErrors = userErrors, !userErrors.isEmpty {
                            let errorMessages = userErrors.compactMap { $0.message }.joined(separator: ", ")
                            completion(.failure(NSError(domain: "UserErrors", code: 400, userInfo: [NSLocalizedDescriptionKey: errorMessages])))
                        } else {
                            completion(.success(decodedData))
                        }
                    }
                } catch (let error) {
                    print(error)
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
