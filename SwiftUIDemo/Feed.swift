//
//  Feed.swift
//  SwiftUIDemo
//
//  Created by Руслан Магомедов on 07.10.2022.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
                Text("Feed")
                    .modifier(TitleModifier())
                Text("Основной текст")
                    .modifier(TextModifire())

            }
        .padding()
        }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}


struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(.green)


    }
}

struct TextModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: 20))
            .padding(.top, 10)

    }
}
