//
//  ContentView.swift
//  gameMatchApp
//
//  Created by 田中裕貴 on 2022/06/25.
//

import SwiftUI

enum ButtonType {
  case create
  case login
}

struct ContentView: View {
  @State var labelText = "Hello SwiftUI"
  var body: some View {
    let bounds = UIScreen.main.bounds
    let model = TopViewModel(bounds: bounds)
    ZStack {
      Color.white
        .edgesIgnoringSafeArea(.all)
      VStack(alignment: .center) {
        // アプリアイコン
        Image(ImageName.no)
          .resizable()
          .frame(width: model.baseWidth, height: model.baseWidth, alignment: .top)
        
        Spacer().frame(height: model.imageButtonSpace)
        
        VStack(spacing: model.baseWidth * 0.2) {
          // アカウント作成ボタン
          ButtonView(TopChar.create, model: model, type: .create)
          // ログインボタン
          ButtonView(TopChar.login, model: model, type: .login)
        }
        
      }.position(x: model.baseWidth, y: model.baseHeight)
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct ButtonView: View {
  let text: String  // 表示させる文字のプロパティ
  let height: CGFloat
  let width: CGFloat
  let bounds = UIScreen.main.bounds
  let type: ButtonType
  let baseColor: Color
  let textColor: Color
  
  init(_ text: String, model:TopViewModel, type: ButtonType) {
    self.text  = text
    self.height = model.baseWidth * 0.27
    self.width = model.baseWidth * 1.5
    self.type = type
    switch type {
    case .create:
      baseColor = Color.white
      textColor = Color.baseColor
    case .login:
      baseColor = Color.baseColor
      textColor = Color.white
    }
  }
  
  var body: some View {
    Button(action: {
      
    }) {
      Text(self.text)
        .font(.custom(FontName.basic, size: 28))
        .minimumScaleFactor(0.1)
        .foregroundColor(textColor)
        .frame(width: width, height: height)
        .background(baseColor)
        .cornerRadius(height / 2)
        .overlay(
          RoundedRectangle(cornerRadius: height / 2)
            .stroke(Color.baseColor, lineWidth: 3)
        )
    }
  }
}

