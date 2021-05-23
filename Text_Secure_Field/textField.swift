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
                    .autocapitalization(.none) // String을 입력하면 자동으로 대문자로 시작하는 것을 꺼줌. preset 이 대문자 시작임
                    .disableAutocorrection(true) // 입력받은 String의 자동완성 해주는 기능을 꺼줌. preset 이 false임
                    .textCase(.none)
                Button(action: {
                    self.name = ""
                }, label: {
                    Image(systemName: "delete.left.fill")
                        .foregroundColor(.secondary)
                })
            } else {
                TextField("아이디를 입력해주세요.", text: $name)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
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
