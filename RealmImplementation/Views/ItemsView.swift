//
//  ItemsView.swift
//  RealmImplementation
//
//  Created by Timotius Leonardo Lianoto on 24/12/22.
//

import SwiftUI
import RealmSwift

struct ItemsView: View {
    @ObservedRealmObject var group: Group
    
    var body: some View {
        VStack {
            if group.items.count == 0 {
                Text("Tap **+** to add new Items")
                    .font(.caption)
                    .foregroundColor(.pink)
            } else {
                List {
                    ForEach(group.items) { item in
                        cell(item: item)
                    }
                    .onDelete(perform: $group.items.remove)
                    .onMove(perform: $group.items.move)
                }
            }
        }
        .navigationTitle("Items")
        .toolbar {
            ToolbarItemGroup(placement: .primaryAction) {
                HStack {
                    addButton()
                    EditButton()
                    LogoutButton()
                }
            }
        }
    }
}

extension ItemsView {
    func cell(item: Item) -> some View {
        NavigationLink {
            ItemDetailsView(item: item)
        } label: {
            Text(item.name)
        }
    }
    
    func addButton() -> some View {
        Button {
            $group.items.append(Item())
        } label: {
            Image(systemName: "plus")
        }
    }
}
