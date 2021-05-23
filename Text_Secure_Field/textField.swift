//
//  textField.swift
//  Text_Secure_Field
//
//  Created by izvern on 2021/05/24.
//

import SwiftUI

struct textField: View {
    @State private var name = ""
    var body: some View {
        HStack{
            if !name.isEmpty{
                //TextField("placeholder 자리", text: Binding<String>)
                TextField("아이디를 입력해주세요.", text: $name) // $ 달러 사인 필수 입력
                    .disableAutocorrection(false)
                    .textCase(.none)
                Button(action: {
                    name = ""
                }, label: {
                    Image(systemName: "delete.left.fill")
                        .foregroundColor(.black)
                })
            } else {
                TextField("아이디를 입력해주세요.", text: $name)
                    .disableAutocorrection(false)
                    .textCase(.none)
            }

        }
    }
}

struct textField_Previews: PreviewProvider {
    static var previews: some View {
        textField()
    }
}
