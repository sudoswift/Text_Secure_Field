//
//  ContentView.swift
//  Text_Secure_Field
//
//  Created by izvern on 2021/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    var body: some View {
        Form{
            TextField("아이디", text: $name) // $ 달러 사인 필수 입력
            Text("입력한 아이디는 \(name) 입니다.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
