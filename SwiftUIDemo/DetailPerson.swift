//
//  DetailPerson.swift
//  SwiftUIDemo
//
//  Created by Руслан Магомедов on 09.10.2022.
//

import SwiftUI

struct DetailPerson: View {
    var person: Person

    var body: some View {
        VStack {
            Text("\(person.name)")
            Text("\(person.age) лет")

            Text("\(person.about)")
                .padding(.top, 20)
        }
    }
}


struct DetailPersonPreview: PreviewProvider {
    static var previews: some View {
        DetailPerson(person: persones[0])
    }
}
