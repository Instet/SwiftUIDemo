//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Руслан Магомедов on 07.10.2022.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    @State private var selection = 0
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selection) {
                Feed()
                    .tabItem {
                        Label("Feed", systemImage: "note.text")
                    }
                    .tag(0)
                Profile()
                    .tabItem {
                        selection == 1 ? Image(systemName: "person.crop.circle.fill") : Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
                    .tag(1)
                ListPerson()
                    .tabItem {
                        Label("List", systemImage: "person")
                    }
                    .tag(2)
            }
            // deprecated
            .accentColor(.blue)
            // .tint(_:) - does not work

        }

    }
}



