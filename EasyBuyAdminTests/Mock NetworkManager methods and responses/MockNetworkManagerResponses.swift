//
//  MockNetworkManagerResponses.swift
//  EasyBuyAdminTests
//
//  Created by Marwan Elbahnasawy on 17/06/2023.
//

import Foundation
import Apollo
@testable import EasyBuyAdmin

class MockNetworkManager{
    static let shared: MockNetworkManager = .init()
    
    var jsonResponse: Data!
    
    lazy var _service: ApolloClient = {
        let store = ApolloStore()
        let client = URLSessionClient()
        let provider = NetworkInterceptorProvider(store: store, client: client)
        let url = URL(string: Constants.baseUrl)!
        
        let requestChainTransport = RequestChainNetworkTransport(interceptorProvider: provider, endpointURL: url)
        
        return ApolloClient(networkTransport: requestChainTransport, store: store)
    }()
    
    static let allProductsResponse = """
{
    "data": {
        "products": {
            "edges": [
                {
                    "node": {
                        "title": "ADIDAS | CLASSIC BACKPACK | LEGEND INK MULTICOLOUR",
                        "totalInventory": 8,
                        "vendor": "ADIDAS",
                        "productType": "ACCESSORIES",
                        "description": "The adidas BP Classic Cap features a pre-curved brim to keep your face shaded, while a hook-and-loop adjustable closure provides a comfortable fit. With a 3-Stripes design and reflective accents. The perfect piece to top off any outfit.",
                        "id": "gid://shopify/Product/8311143858483",
                        "variants": {
                            "edges": [
                                {
                                    "node": {
                                        "title": "OS / blue",
                                        "id": "gid://shopify/ProductVariant/45253522817331",
                                        "inventoryItem": {
                                            "id": "gid://shopify/InventoryItem/47303519732019",
                                            "variant": {
                                                "inventoryQuantity": 8
                                            }
                                        },
                                        "availableForSale": true
                                    }
                                }
                            ]
                        },
                        "options": [
                            {
                                "name": "Size",
                                "values": [
                                    "OS"
                                ]
                            },
                            {
                                "name": "Color",
                                "values": [
                                    "blue"
                                ]
                            }
                        ],
                        "priceRangeV2": {
                            "minVariantPrice": {
                                "amount": "50.0"
                            },
                            "maxVariantPrice": {
                                "amount": "50.0"
                            }
                        },
                        "images": {
                            "edges": [
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/8072c8b5718306d4be25aac21836ce16.jpg?v=1685480989"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/32b3863554f4686d825d9da18a24cfc6.jpg?v=1685480989"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/044f848776141f1024eae6c610a28d12.jpg?v=1685480989"
                                    }
                                }
                            ]
                        },
                        "collections": {
                            "edges": [
                                {
                                    "node": {
                                        "title": "ADIDAS"
                                    }
                                }
                            ]
                        },
                        "tags": [
                            "adidas",
                            "backpack",
                            "egnition-sample-data"
                        ]
                    }
                },
                {
                    "node": {
                        "title": "ADIDAS | CLASSIC BACKPACK",
                        "totalInventory": 14,
                        "vendor": "ADIDAS",
                        "productType": "ACCESSORIES",
                        "description": "This women's backpack has a glam look, thanks to a faux-leather build with an allover fur print. The front zip pocket keeps small things within reach, while an interior divider reins in potential chaos.",
                        "id": "gid://shopify/Product/8311143727411",
                        "variants": {
                            "edges": [
                                {
                                    "node": {
                                        "title": "OS / black",
                                        "id": "gid://shopify/ProductVariant/45253522653491",
                                        "inventoryItem": {
                                            "id": "gid://shopify/InventoryItem/47303519568179",
                                            "variant": {
                                                "inventoryQuantity": 14
                                            }
                                        },
                                        "availableForSale": true
                                    }
                                }
                            ]
                        },
                        "options": [
                            {
                                "name": "Size",
                                "values": [
                                    "OS"
                                ]
                            },
                            {
                                "name": "Color",
                                "values": [
                                    "black"
                                ]
                            }
                        ],
                        "priceRangeV2": {
                            "minVariantPrice": {
                                "amount": "70.0"
                            },
                            "maxVariantPrice": {
                                "amount": "70.0"
                            }
                        },
                        "images": {
                            "edges": [
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/85cc58608bf138a50036bcfe86a3a362.jpg?v=1685480987"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/8a029d2035bfb80e473361dfc08449be.jpg?v=1685480987"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/ad50775123e20f3d1af2bd07046b777d.jpg?v=1685480987"
                                    }
                                }
                            ]
                        },
                        "collections": {
                            "edges": [
                                {
                                    "node": {
                                        "title": "ADIDAS"
                                    }
                                }
                            ]
                        },
                        "tags": [
                            "adidas",
                            "backpack",
                            "egnition-sample-data"
                        ]
                    }
                },
                {
                    "node": {
                        "title": "NIKE | SWOOSH PRO FLAT PEAK CAP",
                        "totalInventory": 14,
                        "vendor": "NIKE",
                        "productType": "ACCESSORIES",
                        "description": "The Nike Swoosh Pro Flat Snapback features an embroidered logo for style and wool construction with an adjustable closure for a comfortable fit.",
                        "id": "gid://shopify/Product/8311143629107",
                        "variants": {
                            "edges": [
                                {
                                    "node": {
                                        "title": "OS / white",
                                        "id": "gid://shopify/ProductVariant/45253522456883",
                                        "inventoryItem": {
                                            "id": "gid://shopify/InventoryItem/47303519371571",
                                            "variant": {
                                                "inventoryQuantity": 14
                                            }
                                        },
                                        "availableForSale": true
                                    }
                                }
                            ]
                        },
                        "options": [
                            {
                                "name": "Size",
                                "values": [
                                    "OS"
                                ]
                            },
                            {
                                "name": "Color",
                                "values": [
                                    "white"
                                ]
                            }
                        ],
                        "priceRangeV2": {
                            "minVariantPrice": {
                                "amount": "30.0"
                            },
                            "maxVariantPrice": {
                                "amount": "30.0"
                            }
                        },
                        "images": {
                            "edges": [
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/58262e66c5e9731050280eb16880d5a4.jpg?v=1685480984"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/0c431da3011f1bc086cb561266367207.jpg?v=1685480984"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/93c1c61ff207aac853d1f482e03fcd3c.jpg?v=1685480984"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/c1a864cb74de0e0fd0004872d6a00edd.jpg?v=1685480984"
                                    }
                                }
                            ]
                        },
                        "collections": {
                            "edges": [
                                {
                                    "node": {
                                        "title": "NIKE"
                                    }
                                }
                            ]
                        },
                        "tags": [
                            "cap",
                            "egnition-sample-data",
                            "nike"
                        ]
                    }
                },
                {
                    "node": {
                        "title": "FLEX FIT | MINI OTTOMAN BLACK",
                        "totalInventory": 51,
                        "vendor": "FLEX FIT",
                        "productType": "ACCESSORIES",
                        "description": "Flexfit Mini Ottoman Cap",
                        "id": "gid://shopify/Product/8311143563571",
                        "variants": {
                            "edges": [
                                {
                                    "node": {
                                        "title": "xl / black",
                                        "id": "gid://shopify/ProductVariant/45253522391347",
                                        "inventoryItem": {
                                            "id": "gid://shopify/InventoryItem/47303519306035",
                                            "variant": {
                                                "inventoryQuantity": 16
                                            }
                                        },
                                        "availableForSale": true
                                    }
                                },
                                {
                                    "node": {
                                        "title": "l / black",
                                        "id": "gid://shopify/ProductVariant/45253522358579",
                                        "inventoryItem": {
                                            "id": "gid://shopify/InventoryItem/47303519273267",
                                            "variant": {
                                                "inventoryQuantity": 11
                                            }
                                        },
                                        "availableForSale": true
                                    }
                                },
                                {
                                    "node": {
                                        "title": "m / black",
                                        "id": "gid://shopify/ProductVariant/45253522325811",
                                        "inventoryItem": {
                                            "id": "gid://shopify/InventoryItem/47303519240499",
                                            "variant": {
                                                "inventoryQuantity": 10
                                            }
                                        },
                                        "availableForSale": true
                                    }
                                },
                                {
                                    "node": {
                                        "title": "s / black",
                                        "id": "gid://shopify/ProductVariant/45253522293043",
                                        "inventoryItem": {
                                            "id": "gid://shopify/InventoryItem/47303519207731",
                                            "variant": {
                                                "inventoryQuantity": 14
                                            }
                                        },
                                        "availableForSale": true
                                    }
                                }
                            ]
                        },
                        "options": [
                            {
                                "name": "Size",
                                "values": [
                                    "s",
                                    "m",
                                    "l",
                                    "xl"
                                ]
                            },
                            {
                                "name": "Color",
                                "values": [
                                    "black"
                                ]
                            }
                        ],
                        "priceRangeV2": {
                            "minVariantPrice": {
                                "amount": "29.99"
                            },
                            "maxVariantPrice": {
                                "amount": "29.99"
                            }
                        },
                        "images": {
                            "edges": [
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/6170fd62b8ebee856d0cbdeac874abfd.jpg?v=1685480980"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/47698bde92b6be2114ca1ac014e7d5cf.jpg?v=1685480980"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/2406ea4db27c3e7bbc7f77d9d6ce1fa8.jpg?v=1685480980"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/3f1610213c3029bbf6f050505fc02823.jpg?v=1685480980"
                                    }
                                }
                            ]
                        },
                        "collections": {
                            "edges": [
                                {
                                    "node": {
                                        "title": "FLEX FIT"
                                    }
                                },
                                {
                                    "node": {
                                        "title": "MEN"
                                    }
                                }
                            ]
                        },
                        "tags": [
                            "egnition-sample-data",
                            "flex-fit",
                            "men"
                        ]
                    }
                },
                {
                    "node": {
                        "title": "HERSCHEL | IONA",
                        "totalInventory": 8,
                        "vendor": "HERSCHEL",
                        "productType": "ACCESSORIES",
                        "description": "Featuring a cinch closure concealed by a slender top flap, the Iona backpack unites everyday practicality with clean design.",
                        "id": "gid://shopify/Product/8311143399731",
                        "variants": {
                            "edges": [
                                {
                                    "node": {
                                        "title": "OS / black",
                                        "id": "gid://shopify/ProductVariant/45253521899827",
                                        "inventoryItem": {
                                            "id": "gid://shopify/InventoryItem/47303518814515",
                                            "variant": {
                                                "inventoryQuantity": 8
                                            }
                                        },
                                        "availableForSale": true
                                    }
                                }
                            ]
                        },
                        "options": [
                            {
                                "name": "Size",
                                "values": [
                                    "OS"
                                ]
                            },
                            {
                                "name": "Color",
                                "values": [
                                    "black"
                                ]
                            }
                        ],
                        "priceRangeV2": {
                            "minVariantPrice": {
                                "amount": "119.95"
                            },
                            "maxVariantPrice": {
                                "amount": "119.95"
                            }
                        },
                        "images": {
                            "edges": [
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/995988006b97471478db3371d573bfaf.jpg?v=1685480976"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/b0ab17055d14298b4adb7499b23cb0bd.jpg?v=1685480976"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/97da9be116d931319e458251c546a8cc.jpg?v=1685480976"
                                    }
                                },
                                {
                                    "node": {
                                        "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/products/fde9f9b5276e4fa87968fcced7d2b254.jpg?v=1685480976"
                                    }
                                }
                            ]
                        },
                        "collections": {
                            "edges": [
                                {
                                    "node": {
                                        "title": "HERSCHEL"
                                    }
                                }
                            ]
                        },
                        "tags": [
                            "backpack",
                            "egnition-sample-data",
                            "herschel"
                        ]
                    }
                }
            ]
        }
    },
    "extensions": {
        "cost": {
            "requestedQueryCost": 172,
            "actualQueryCost": 95,
            "throttleStatus": {
                "maximumAvailable": 1000.0,
                "currentlyAvailable": 905,
                "restoreRate": 50.0
            }
        }
    }
}
"""
    
    static let allCollectionsResponse = """
{
    "data": {
        "collections": {
            "edges": [
                {
                    "node": {
                        "id": "gid://shopify/Collection/449086619955",
                        "title": "aa",
                        "handle": "aa",
                        "description": "fad",
                        "image": {
                            "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/collections/8072c8b5718306d4be25aac21836ce16.jpg?v=1686926676"
                        }
                    }
                },
                {
                    "node": {
                        "id": "gid://shopify/Collection/447404310835",
                        "title": "SALE",
                        "handle": "sale",
                        "description": "On sale",
                        "image": {
                            "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/collections/82c7b0b668b962bb4ffae786c8e827cd.jpg?v=1685481065"
                        }
                    }
                },
                {
                    "node": {
                        "id": "gid://shopify/Collection/447404278067",
                        "title": "KID",
                        "handle": "kid",
                        "description": "Collection for kids",
                        "image": {
                            "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/collections/3b6a545a8f309a6085625bcadcb19712.jpg?v=1685481063"
                        }
                    }
                },
                {
                    "node": {
                        "id": "gid://shopify/Collection/447404245299",
                        "title": "WOMEN",
                        "handle": "women",
                        "description": "Collection for women",
                        "image": {
                            "url": "https://cdn.shopify.com/s/files/1/0773/8789/0995/collections/0711d7a9ab22e1d866c244756574349b.jpg?v=1685481062"
                        }
                    }
                }
            ]
        }
    },
    "extensions": {
        "cost": {
            "requestedQueryCost": 10,
            "actualQueryCost": 10,
            "throttleStatus": {
                "maximumAvailable": 1000.0,
                "currentlyAvailable": 990,
                "restoreRate": 50.0
            }
        }
    }
}
"""

    static let allDiscountCodesResponse = """
{
    "data": {
        "codeDiscountNodes": {
            "nodes": [
                {
                    "id": "gid://shopify/DiscountCodeNode/1388638306611",
                    "codeDiscount": {
                        "title": "Women 20% off",
                        "summary": "20% off WOMEN • One use per customer",
                        "shortSummary": "20% off WOMEN",
                        "codeCount": 1,
                        "usageLimit": null,
                        "status": "ACTIVE",
                        "startsAt": "2023-06-01T00:00:00Z",
                        "endsAt": null,
                        "asyncUsageCount": 0,
                        "appliesOncePerCustomer": true,
                        "customerGets": {
                            "items": {
                                "__typename": "DiscountCollections"
                            },
                            "value": {
                                "__typename": "DiscountPercentage"
                            }
                        },
                        "codes": {
                            "nodes": [
                                {
                                    "code": "20PERCENTOFFWOMENITEMS",
                                    "id": "gid://shopify/DiscountRedeemCode/20330180542771"
                                }
                            ]
                        }
                    }
                },
                {
                    "id": "gid://shopify/DiscountCodeNode/1388494094643",
                    "codeDiscount": {
                        "title": "70 Percent Off Kids",
                        "summary": "70% off KID • One use per customer",
                        "shortSummary": "70% off KID",
                        "codeCount": 1,
                        "usageLimit": 5,
                        "status": "ACTIVE",
                        "startsAt": "2023-06-01T00:00:00Z",
                        "endsAt": null,
                        "asyncUsageCount": 0,
                        "appliesOncePerCustomer": true,
                        "customerGets": {
                            "items": {
                                "__typename": "DiscountCollections"
                            },
                            "value": {
                                "__typename": "DiscountPercentage"
                            }
                        },
                        "codes": {
                            "nodes": [
                                {
                                    "code": "70OFFKIDS",
                                    "id": "gid://shopify/DiscountRedeemCode/20328928313651"
                                }
                            ]
                        }
                    }
                },
                {
                    "id": "gid://shopify/DiscountCodeNode/1388430885171",
                    "codeDiscount": {
                        "title": "Men 50%",
                        "summary": "50% off MEN • One use per customer",
                        "shortSummary": "50% off MEN",
                        "codeCount": 1,
                        "usageLimit": null,
                        "status": "ACTIVE",
                        "startsAt": "2023-06-01T00:00:00Z",
                        "endsAt": null,
                        "asyncUsageCount": 0,
                        "appliesOncePerCustomer": true,
                        "customerGets": {
                            "items": {
                                "__typename": "DiscountCollections"
                            },
                            "value": {
                                "__typename": "DiscountPercentage"
                            }
                        },
                        "codes": {
                            "nodes": [
                                {
                                    "code": "MEN50OFF",
                                    "id": "gid://shopify/DiscountRedeemCode/20328492564787"
                                }
                            ]
                        }
                    }
                }
            ]
        }
    },
    "extensions": {
        "cost": {
            "requestedQueryCost": 29,
            "actualQueryCost": 24,
            "throttleStatus": {
                "maximumAvailable": 1000.0,
                "currentlyAvailable": 976,
                "restoreRate": 50.0
            }
        }
    }
}
"""
    
}
