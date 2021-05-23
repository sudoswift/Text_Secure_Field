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
            textField()
            secureField()
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
