//
//  NetworkChecker.swift
//  EasyBuyAdmin
//
//  Created by Marwan Elbahnasawy on 20/06/2023.
//

import Foundation
import Network

class NetworkChecker: ObservableObject {
    @Published private(set) var reachable: Bool = false
    private let monitor = NWPathMonitor()
    
    init() {
        monitor.pathUpdateHandler = { [weak self] path in
            DispatchQueue.main.async {
                self?.reachable = path.status == .satisfied
            }
        }
        let queue = DispatchQueue(label: "NetworkMonitor")
        monitor.start(queue: queue)
    }
}
