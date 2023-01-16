//
//  HomeList.swift
//  EstartaTask
//
//  Created by Sawsan Alkhdair on 14/01/2023.
//

import Foundation

struct HomeList: Decodable {
    var results: [ItemData]
    var pagination: Pagination
}

struct ItemData: Decodable, Hashable, Identifiable {
    let id = UUID()
    var created_at: String
    var price: String
    var name: String
    var uid: String
    var image_ids: [String]
    var image_urls: [String]
    var image_urls_thumbnails: [String]
    
}

struct Pagination: Decodable {
    var key: String?
}
