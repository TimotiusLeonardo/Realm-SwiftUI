//
//  LocalOnlyContentView.swift
//  RealmImplementation
//
//  Created by Timotius Leonardo Lianoto on 24/12/22.
//

import SwiftUI
import RealmSwift

struct LocalOnlyContentView: View {
    @ObservedResults(Group.self) var groups
    
    var body: some View {
        if let group = groups.first {
            NavigationView {
                ItemsView(group: group)
            }
        } else {
            ProgressView()
                .onAppear {
                    $groups.append(Group())
                }
        }
    }
}
