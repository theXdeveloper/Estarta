//
//  ESHomeCommunicator.swift
//  EstartaTask
//
//  Created by Sawsan Alkhdair on 14/01/2023.
//

import Foundation

protocol ESHomeCommunicatorDelegate: AnyObject {
    func handleListing()
}

class ESHomeCommunicator {
    var networkManager = ESNetworkManager()
    var delegate: ESHomeCommunicatorDelegate?
    let url = APIs.getHomeData
    
    func getHomeData(completionHandler: @escaping (HomeList?, Error?) -> Void) {
        self.networkManager.getRequest(url: url) { data, err in
            if let data = data {
                do {
                    // Make sure this JSON is in the format we expect
                    let homeData = try JSONDecoder().decode(HomeList.self, from: data)
                    completionHandler(homeData, nil)

                } catch let error as NSError {
                    print("Failed to load: \(error)")
                    completionHandler(nil, nil)
                }
            }
        }
    }
    
}
