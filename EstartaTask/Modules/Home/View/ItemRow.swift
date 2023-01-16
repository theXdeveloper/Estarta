//
//  ItemRow.swift
//  EstartaTask
//
//  Created by Sawsan Alkhdair on 15/01/2023.
//

import SwiftUI

struct ItemRow: View {
    var item: ItemData

    var body: some View {
        
        HStack {
            AsyncImage(
                url: URL(string: item.image_urls_thumbnails[0])!,
                placeholder: { Text("...") }
            )
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text(item.name)
            Spacer()
        }
    }
}
