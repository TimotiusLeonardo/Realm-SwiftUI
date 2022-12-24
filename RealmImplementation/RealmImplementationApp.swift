//
//  RealmImplementationApp.swift
//  RealmImplementation
//
//  Created by Timotius Leonardo Lianoto on 24/12/22.
//

import SwiftUI
import RealmSwift

let app: RealmSwift.App? = nil

@main
struct RealmImplementationApp: SwiftUI.App {
    var body: some Scene {
        WindowGroup {
            if let app = app {
                EmptyView()
            } else {
                LocalOnlyContentView()
            }
            
//            HStack {
//                Image(systemName: "leaf.fill")
//                    .foregroundColor(.green)
//                Text("Hello, MongoDB!")
//            }
        }
    }
}
