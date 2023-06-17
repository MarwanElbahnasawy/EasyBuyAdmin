//
//  NetworkManagerTest.swift
//  EasyBuyAdminTests
//
//  Created by Marwan Elbahnasawy on 17/06/2023.
//

import XCTest
@testable import EasyBuyAdmin

final class NetworkManagerTest: XCTestCase {

    func testDataDecodingForAllProducts () {
        // Given: An API request to fetch all products
        let expectation = expectation(description: "Waiting for the API")
        
        NetworkManager.shared.queryGraphQLRequest(query: GetAllProductsQuery(), responseModel: DataClassGetAllProducts.self) { result in
            // When: The response is received
            
            // Then: The result should not be nil
            XCTAssertNotNil(result)
            expectation.fulfill()
            
        }
        
        self.waitForExpectations(timeout: 5)
    }
    
    func testProductsCount () {
        // Given: An API request to fetch all products
        let expectation = expectation(description: "Waiting for the API")
        
        NetworkManager.shared.queryGraphQLRequest(query: GetAllProductsQuery(), responseModel: DataClassGetAllProducts.self) { result in
            // When: The response is received
            switch result {
            case .success(let data):
                if let productEdges = data.products?.edges {
                    let products = productEdges.compactMap { $0.node }
                    // Then: The number of products should be greater than 10
                    XCTAssertGreaterThan(products.count, 10)
                    expectation.fulfill()
                }
            case .failure(_):
                XCTFail("Error fetching products")
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: 5)
    }

    func testDataDecodingForAllCollections () {
        // Given: An API request to fetch all collections
        let expectation = expectation(description: "Waiting for the API")
        
        NetworkManager.shared.queryGraphQLRequest(query: GetAllCollectionsQuery(), responseModel: DataClassGetAllCollections.self) { result in
            // When: The response is received
            
            // Then: The result should not be nil
            XCTAssertNotNil(result)
            expectation.fulfill()
            
        }
        
        self.waitForExpectations(timeout: 5)
    }
    
    func testCollectionsCount () {
        // Given: An API request to fetch all collections
        let expectation = expectation(description: "Waiting for the API")
        
        NetworkManager.shared.queryGraphQLRequest(query: GetAllCollectionsQuery(), responseModel: DataClassGetAllCollections.self) { result in
            // When: The response is received
            switch result {
            case .success(let data):
                if let collectionEdges = data.collections?.edges {
                    let collections = collectionEdges.compactMap { $0.node }
                    // Then: The number of collections should be greater than 10
                    XCTAssertGreaterThan(collections.count, 10)
                    expectation.fulfill()
                }
            case .failure(_):
                XCTFail("Error fetching collections")
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: 5)
    }
    
    func testDataDecodingForAllDiscountCodes () {
        // Given: An API request to fetch all discount codes
        let expectation = expectation(description: "Waiting for the API")
        
        NetworkManager.shared.queryGraphQLRequest(query: GetAllDiscountCodesQuery(), responseModel: DataClassGetAllDiscountCodes.self) { result in
            // When: The response is received
            
            // Then: The result should not be nil
            XCTAssertNotNil(result)
            expectation.fulfill()
            
        }
        
        self.waitForExpectations(timeout: 5)
    }
    
    func testDiscountCodesCount () {
        // Given: An API request to fetch all discount codes
        let expectation = expectation(description: "Waiting for the API")
        
        NetworkManager.shared.queryGraphQLRequest(query: GetAllDiscountCodesQuery(), responseModel: DataClassGetAllDiscountCodes.self) { result in
            // When: The response is received
            switch result {
            case .success(let data):
                if let codeDiscountNodes = data.codeDiscountNodes?.nodes {
                    let discountCodesCount = codeDiscountNodes.count
                    // Then: The number of discount codes should be greater than 1
                    XCTAssertGreaterThan(discountCodesCount, 1)
                    expectation.fulfill()
                }
            case .failure(_):
                XCTFail("Error fetching discount codes")
                expectation.fulfill()
            }
        }
        
        self.waitForExpectations(timeout: 5)
    }
}
