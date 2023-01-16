//
//  ESHomeViewModel.swift
//  EstartaTask
//
//  Created by Sawsan Alkhdair on 14/01/2023.
//

import Foundation

extension ESHomeView {
    class ESHomeViewModel: ObservableObject, ESHomeCommunicatorDelegate {

        @Published private(set) var results: [ItemData] = []
//        @Published var isLoading: Bool   = false
        
        ///**
        ///  Preparing of the data of Home
        ///
        func getData() {
            let homeCommunicator = ESHomeCommunicator()
            homeCommunicator.delegate = self
            homeCommunicator.getHomeData { data, err in
                self.results = data?.results ?? []
            }
        }
        
    }
}
