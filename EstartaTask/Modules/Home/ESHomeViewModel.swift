//
//  ESHomeViewModel.swift
//  EstartaTask
//
//  Created by Sawsan Alkhdair on 14/01/2023.
//

import Foundation

extension ESHomeView {
    class ESHomeViewModel: ObservableObject {

        enum State {
            case none
            case loading
            case failed(Error)
            case loaded(HomeList)
        }
        
        @Published private(set) var state = State.none
        private let homeCommunicator = ESHomeCommunicator()
        
        ///**
        ///  Preparing of the data of Home
        ///
        func getData() {
            state = .loading
            homeCommunicator.getHomeData { [weak self] result,err  in
                if let homeList = result {
                    self?.state = .loaded(homeList)
                    return;
                } else if let error = err {
                        self?.state = .failed(error)
                        return;
                }
                self?.state = .none
            }
        }
        
    }
}
