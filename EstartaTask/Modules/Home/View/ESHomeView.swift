//
//  ESHomeView.swift
//  EstartaTask
//
//  Created by Sawsan Alkhdair on 14/01/2023.
//

import SwiftUI

struct ESHomeView : View {
    @ObservedObject var viewModel: ESHomeViewModel
    
    init(viewModel: ESHomeViewModel = ESHomeViewModel()) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.results, id: \.self) { item in
                    ItemRow(item: item)
                }
            }
            .navigationTitle("Classified List")
            .onAppear(perform: viewModel.getData)
        }
    }
}
