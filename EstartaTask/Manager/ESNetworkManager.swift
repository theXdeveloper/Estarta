//
//  ESNetworkManager.swift
//  EstartaTask
//
//  Created by Sawsan Alkhdair on 14/01/2023.
//

import Foundation
import Alamofire

class ESNetworkManager: NSObject {

    //Shared instance
    static let shared = ESNetworkManager()

    
    /**
     *** Start monitoring the network reachability
     **/
    func startNetworkReachabilityObserver() -> Bool {
        // Start listening
        return NetworkReachabilityManager()!.startListening { status in
            switch status {
            case .notReachable:
                print("The network is not reachable")
            case .unknown :
                print("It is unknown whether the network is reachable")
            case .reachable(.ethernetOrWiFi):
                print("The network is reachable over the WiFi connection")
            case .reachable(.cellular):
                print("The network is reachable over the cellular connection")
            }
        }
    }
    

    /**
     *** GET request using Alamofire
     **/
    func getRequest(url: String, completionHandler: @escaping (Data?, Error?) -> Void) {
        print(url)

        let headers: HTTPHeaders? = ["Accept":"application/json"]
        AF.request(url, method: .get, encoding: URLEncoding.default, headers: headers).response { response in

            guard let data = response.data else {
                print("Empty data")
                completionHandler(nil, response.error)
                return;
            }
            
            completionHandler(data, response.error)
            return;
            
        }
    }

}
