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
            switch viewModel.state {
            case .none:
                // Render a clear color and start loading the data on
                // first appearing of the view, which should make the
                // view model transition into its loading state
                Color.clear.onAppear(perform: viewModel.getData)
            case .loading:
                //View the loading indicator with some texts
                VStack {
                    Text("Estarta").font(.system(size: 36, weight: .semibold))
                    ProgressView()
                }
            case .failed(let error):
                //TODO - Sawsanm
                //We should handle this in a better way instead of showing the error in text
                //We can create an Error view with retry handler
                Text(error.localizedDescription)
            case .loaded(let homeList):
                List {
                    ForEach(homeList.results, id: \.self) { item in
                        NavigationLink {
                            ESDetailsView(item: item)
                        } label: {
                            ItemRow(item: item)
                        }
                    }
                }.navigationTitle("Estarta")
            }
        }
    }
}
