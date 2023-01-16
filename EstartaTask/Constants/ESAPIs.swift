//
//  ESAPIs.swift
//  EstartaTask
//
//  Created by Sawsan Alkhdair on 14/01/2023.
//

import Foundation

struct APIs {
    
    private struct ESDomain {
        static let staging = ""
        static let production = ""
    }
    
    private  static let BaseURL = "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com/"

    static var getHomeData: String {
        return BaseURL  + "default/dynamodb-writer"
    }
}
