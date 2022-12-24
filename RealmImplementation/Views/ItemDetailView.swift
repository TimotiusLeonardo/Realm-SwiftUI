//
//  ItemDetailView.swift
//  RealmImplementation
//
//  Created by Timotius Leonardo Lianoto on 24/12/22.
//

import SwiftUI
import RealmSwift

struct ItemDetailsView: View {
    @ObservedRealmObject var item: Item
    
    var body: some View {
        ScrollView {
            Text("Edit name")
                .font(.caption)
                .foregroundColor(.gray)
            TextField("New name", text: $item.name)
        }
        .padding()
        .navigationTitle(item.name)
    }
}
