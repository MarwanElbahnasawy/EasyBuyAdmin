//
//  MockNetworkManagerTest.swift
//  EasyBuyAdminTests
//
//  Created by Marwan Elbahnasawy on 17/06/2023.
//

import XCTest
@testable import EasyBuyAdmin

final class MockNetworkManagerTest: XCTestCase {
    
    func testDecodeProductsData() {
        // Given: A request to fetch all products
        
        MockNetworkManager.shared.queryAllProducts { result in
            // When: The response is received
            
            // Then: The result should not be nil
            XCTAssertNotNil(result)
        }
        
    }
    
    func testProductsCountIs5() {
        // Given: A request to fetch all products
        
        MockNetworkManager.shared.queryAllProducts { result in
            switch result {
            case .success(let root):
                if let productEdges = root.data?.products?.edges {
                    let products = productEdges.compactMap { $0.node }
                    // Then: The number of products should be 5
                    XCTAssertEqual(products.count, 5)
                } else {
                    XCTFail("Error: products not found in response")
                }
            case .failure(_):
                XCTFail("Error fetching products")
            }
        }
        
    }
    
    
    func testDecodeCollectionsData() {
        // Given: A request to fetch all collections
        MockNetworkManager.shared.queryAllCollections { result in
            // When: The response is received
            
            // Then: The result should not be nil
            XCTAssertNotNil(result)
        }
        
    }
    
    func testCollectionsCountIs4() {
        // Given: A request to fetch all collections
        
        MockNetworkManager.shared.queryAllCollections { result in        
            switch result {
            case .success(let root):
                if let collectionEdges = root.data?.collections?.edges {
                    let collections = collectionEdges.compactMap { $0.node }
                    // Then: The number of collections should be 4
                    XCTAssertEqual(collections.count, 4)
                } else {
                    XCTFail("Error: collections not found in response")
                }
            case .failure(_):
                XCTFail("Error fetching products")
            }
        }
        
    }
    
    func testDecodeDiscountCodesData() {
        // Given: A request to fetch all discount codes
        MockNetworkManager.shared.queryAllDiscountCodes { result in
            // When: The response is received
            
            // Then: The result should not be nil
            XCTAssertNotNil(result)
        }
        
    }
    
    func testDiscountCodesCountIs3() {
        // Given: A request to fetch all products
        
        MockNetworkManager.shared.queryAllDiscountCodes { result in
            switch result {
            case .success(let root):
                if let codeDiscountNodes = root.data?.codeDiscountNodes?.nodes {
                        let discountCodesCount = codeDiscountNodes.count
                    // Then: The number of discount codes should be 3
                    XCTAssertEqual(discountCodesCount, 3)
                } else {
                    XCTFail("Error: discount codes not found in response")
                }
            case .failure(_):
                XCTFail("Error fetching products")
            }
        }
        
    }
    
}
