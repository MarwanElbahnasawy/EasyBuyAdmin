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
        let url = URL(string: NetworkConstants.baseUrl)!

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
                    let data = try JSONSerialization.data(withJSONObject: apolloResponse.data!.jsonObject, options: .fragmentsAllowed)
                    let decodedData = try JSONDecoder().decode(responseModel, from: data)
                    completion(.success(decodedData))
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
                    let data = try JSONSerialization.data(withJSONObject: apolloResponse.data!.jsonObject, options: .fragmentsAllowed)
                    let decode = try JSONDecoder().decode(responseModel, from: data)
                    completion(.success(decode))
                } catch (let error) {
                    print(error)
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
