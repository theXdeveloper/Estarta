//
//  AsyncImage.swift
//  EstartaTask
//
//  Created by Sawsan Alkhdair on 16/01/2023.
//

import Foundation
import SwiftUI
import Combine

struct AsyncImage<Placeholder: View>: View {
    @StateObject private var fetchingManager: ESFetchingImageManager
    private let placeholder: Placeholder

    init(url: URL, @ViewBuilder placeholder: () -> Placeholder) {
        self.placeholder = placeholder()
        _fetchingManager = StateObject(wrappedValue: ESFetchingImageManager(url: url, cache: Environment(\.imageCache).wrappedValue))
    }

    var body: some View {
        content
            .onAppear(perform: fetchingManager.load)
    }

    private var content: some View {
        Group {
            if fetchingManager.image != nil {
                Image(uiImage: fetchingManager.image!)
                    .resizable()
            } else {
                placeholder
            }
        }
    }
}

