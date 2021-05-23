# TextField & SecureField in SwiftUI
- [#17](https://www.youtube.com/watch?v=l0X4j_yMT9U&list=PLgOlaPUIbynqyJHiTEv7CFaXd8g5jtogT) About TextField &amp; SecureField in SwiftUI


## Reference
- [Youtube](https://www.youtube.com/watch?v=l0X4j_yMT9U&list=PLgOlaPUIbynqyJHiTEv7CFaXd8g5jtogT)
- [Dev Blog 1](https://seons-dev.tistory.com/5)
- [Dev Blog 2](https://seons-dev.tistory.com/4?category=855551)

## Result
- <img src = "https://user-images.githubusercontent.com/83416999/119268907-fb44b180-bc2f-11eb-8225-3240908ae9d0.png" width="200rem"> <img src="https://user-images.githubusercontent.com/83416999/119268909-fc75de80-bc2f-11eb-99f2-cc9496061246.png" width="200rem"> <img src="https://user-images.githubusercontent.com/83416999/119268910-fda70b80-bc2f-11eb-8041-8189d51aeead.png" width="200rem">


## 정보
 - TextField와 SecureField를 통해 변하는 정보를 화면 안에 담을 예정이기 때문에 @State private var name="" 으로 선언해준다.
 - TextField View 밑에 autocapitalization 를 .none 으로 설정해줌으로써 TextField에 입력하는 첫 영문자가 대문자로 되는 것을 막아준다.
 - TextField View 밑에 disableAutocorrection 를 true 로 설정해줌으로써 TextField에 자동완성이 생성되는 것을 막아준다. preset이 false임.
 - if !name.isEmpty 의 조건문을 통해 TextField가 비어있으면 기본 TextField가 보이도록 설정해주고, TextField에 String이 입력되면 SF Symbols를 이용한 이미지의 버튼이 보이게 만들어준다.
 - SF Symbols를 이용한 버튼을 클릭하면 action을 self.name = "" 으로 그 내용이 초기화 되도록 설정해준다.
 - [Clear button googling keyword](https://www.google.com/search?q=swiftui+textfield+clear+button)[참조](https://stackoverflow.com/questions/58200555/swiftui-add-clearbutton-to-textfield)
 - 배경색은 ZStack 에 Color.blue.edgeIgnoringSafeArea(.all) 을 이용해 파란색으로 설정해주었다.  
