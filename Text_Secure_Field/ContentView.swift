//
//  ContentView.swift
//  Text_Secure_Field
//
//  Created by izvern on 2021/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack{
            HStack{
                if !name.isEmpty{
                    //TextField("placeholder 자리", text: Binding<String>)
                    TextField("아이디를 입력해주세요.", text: $name) // $ 달러 사인 필수 입력
                        .disableAutocorrection(true)
                        .textCase(.none)
                    Button(action: {
                        name = ""
                    }, label: {
                        Image(systemName: "delete.left.fill")
                            .foregroundColor(.black)
                    })
                } else {
                    
                    TextField("아이디를 입력해주세요.", text: $name)
                        .disableAutocorrection(true)
                        .textCase(.none)
                }

            }
                HStack{
                    if !password.isEmpty{
                        SecureField("비밀번호를 입력해주세요.", text: $password)
                            .disableAutocorrection(true)
                            .textCase(.none)
                        Button(action: {
                            password = ""
                        }, label: {
                            Image(systemName: "delete.left.fill")
                                .foregroundColor(.black)
                        })
                    } else {
                        SecureField("비밀번호를 입력해주세요.", text: $password)
                            .disableAutocorrection(true)
                            .textCase(.none)
                    }
                }

            Text("입력한 아이디 : \(name)")
        }.textFieldStyle(RoundedBorderTextFieldStyle())
        .padding(.horizontal, 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
