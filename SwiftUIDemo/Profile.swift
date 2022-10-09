//
//  Profile.swift
//  SwiftUIDemo
//
//  Created by Руслан Магомедов on 08.10.2022.
//

import SwiftUI

struct Profile: View {

    enum Field {
        case login
        case password
    }
    @State private var login: String = ""
    @State private var password: String = ""
    @FocusState private var focusedFielf: Field?


    var body: some View {
        VStack(spacing: 0) {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 100.0, height: 100.0)

            VStack(spacing: 0) {
                TextField("Login", text: $login)
                    .frame(height: 40)
                    .padding(.horizontal, 10)
                    .onSubmit {
                        print("переключаемся на ввод пароля")
                        focusedFielf = .password
                    }
                    .focused($focusedFielf, equals: .login)


                Divider()
                    .background(.gray)

                SecureField("Password", text: $password) {
                    print("press key - return ")
                }
                .frame(height: 40)
                .padding(.horizontal, 10)
                .focused($focusedFielf, equals: .password)

            }

            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.gray.opacity(0.5), lineWidth: 2)
            )
            .background(
                RoundedRectangle(cornerRadius: 10).fill(Color.gray.opacity(0.1))
            )
            .padding(.top, 100)

            Text("Hello,\( login)")
                .padding(.top, 10)
            
            Button {
                print("Log In")
            } label: {
                HStack {
                    Spacer()
                    Text("Log In")
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            .background(Color.accentColor)
            .contentShape(Rectangle())
            .cornerRadius(10)
        }
        .padding()
    }
}




struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
