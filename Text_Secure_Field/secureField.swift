//
//  secureField.swift
//  Text_Secure_Field
//
//  Created by izvern on 2021/05/24.
//

import SwiftUI

struct secureField: View {
    @State private var password = ""
    var body: some View {
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
    }
}

struct secureField_Previews: PreviewProvider {
    static var previews: some View {
        secureField()
    }
}