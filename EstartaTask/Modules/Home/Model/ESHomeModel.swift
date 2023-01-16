//
//  ESHomeModel.swift
//  EstartaTask
//
//  Created by Sawsan Alkhdair on 14/01/2023.
//

import Foundation

//Another way to get the data using Generic Type
/*
var homeList: [ItemData] = load(APIs.getHomeData)

func load<T: Decodable>(_ apiName: String) -> T {
    let data: Data

    guard let serviceData = nil
    else {
        fatalError("Couldn't find \(apiName) in the APIs.")
    }

    do {
        data = try Data(contentsOf: serviceData)
    } catch {
        fatalError("Couldn't load \(apiName) from service:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(apiName) as \(T.self):\n\(error)")
    }
}
 */
