//
//  ListPerson.swift
//  SwiftUIDemo
//
//  Created by Руслан Магомедов on 09.10.2022.
//

import SwiftUI

struct ListPerson: View {
    var body: some View {
        NavigationView {
            List(persones) { person in
                NavigationLink {
                    DetailPerson(person: person)
                } label: {
                    Text(person.name)
                }
                .listRowBackground(Color.gray.opacity(0.3))
            }
            .listStyle(.automatic)
            .navigationTitle("Персонажи")
            .navigationBarTitleDisplayMode(.automatic)
        }

    }
        
}


struct listPreview: PreviewProvider {
    static var previews: some View {
        ListPerson()
    }
}
