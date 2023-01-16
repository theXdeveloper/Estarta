//
//  ESDetailsView.swift
//  EstartaTask
//
//  Created by Sawsan Alkhdair on 16/01/2023.
//

import SwiftUI

struct ESDetailsView: View {
    var item: ItemData
    var body: some View {
            VStack {
                AsyncImage(
                    url: URL(string: item.image_urls[0])!,
                    placeholder: { ProgressView() }
                )
                    .aspectRatio(contentMode: .fit)

                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.title)

                    HStack {
                        Text(item.price).foregroundColor(.blue)
                        Spacer()
                        Text(item.created_at)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                    Divider()

                }
                .padding()

                Spacer()
            }
        }
}
