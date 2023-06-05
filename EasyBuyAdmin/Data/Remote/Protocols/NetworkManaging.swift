//
//  NetworkManaging.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import Foundation
import Apollo

protocol NetworkManaging {
    var service: ApolloClient { get set }
    func queryGraphQLRequest<T: GraphQLQuery, K: Codable>(query: T, responseModel: K.Type, completion: @escaping ((Result<K, Error>) -> Void))
    func performGraphQLRequest<T: GraphQLMutation, K: Codable>(mutation: T, responseModel: K.Type, completion: @escaping ((Result<K, Error>) -> Void))
}
