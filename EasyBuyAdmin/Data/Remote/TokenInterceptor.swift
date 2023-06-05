//
//  TokenInterceptor.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 04/06/2023.
//

import Foundation
import Apollo

class TokenInterceptor: ApolloInterceptor {
    let token: String?

    init(token: String) {
        self.token = token
    }

    enum TokenError: Error {
        case noToken
    }

    private func addTokenAndProceed<Operation: GraphQLOperation>(
        token: String,
        to request: HTTPRequest<Operation>,
        chain: RequestChain,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {

        request.addHeader(name: NetworkConstants.keyAccessToken, value: token)
        chain.proceedAsync(request: request, response: response, completion: completion)
    }

    func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {

        guard let token = token else {
            chain.handleErrorAsync(TokenError.noToken, request: request, response: response, completion: completion)
            return
        }

        self.addTokenAndProceed(token: token, to: request, chain: chain, response: response, completion: completion)
    }
}
