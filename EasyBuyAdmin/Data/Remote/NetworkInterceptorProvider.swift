//
//  NetworkInterceptorProvider.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import Foundation
import Apollo

struct NetworkInterceptorProvider: InterceptorProvider {
    private let store: ApolloStore
    private let client: URLSessionClient
    
    init(store: ApolloStore, client: URLSessionClient) {
        self.store = store
        self.client = client
    }
    
    func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
        return [
            CacheReadInterceptor(store: self.store),
            TokenInterceptor(token: NetworkConstants.valueAccessToken),
            NetworkFetchInterceptor(client: self.client),
            ResponseCodeInterceptor(),
            JSONResponseParsingInterceptor(cacheKeyForObject: self.store.cacheKeyForObject),
            AutomaticPersistedQueryInterceptor(),
            CacheWriteInterceptor(store: self.store)
        ]
    }
}
