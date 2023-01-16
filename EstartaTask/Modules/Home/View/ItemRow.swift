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
//            item.image
//                .resizable()
//                .frame(width: 50, height: 50)
            Text(item.name)
            
            Spacer()
        }
    }
}
