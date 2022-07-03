//
//  ContentView.swift
//  gameMatchApp
//
//  Created by 田中裕貴 on 2022/06/25.
//

import SwiftUI

struct ContentView: View {
  @State var labelText = "Hello SwiftUI"
  var body: some View {
    let bounds = UIScreen.main.bounds
    let model = TopViewModel(bounds: bounds)
    ZStack {
      Color.white
        .edgesIgnoringSafeArea(.all)
      VStack(alignment: .center) {
        Image("no_image")
          .resizable()
          .frame(width: model.baseWidth, height: model.baseWidth, alignment: .top)
        
        Spacer().frame(height: model.viewSpace)
        
        VStack(spacing: 20) {
          ButtonView("create account", height: 30, width: model.baseWidth)
          ButtonView("Login", height: 30, width: model.baseWidth)
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
  
  init(_ text: String, height: CGFloat, width: CGFloat) {
    self.text  = text
    self.height = height
    self.width = width
  }
  
  var body: some View {
    Button(action: {
      
    }) {
      Text(self.text)
        .font(.title)
        .foregroundColor(.black)
        .fontWeight(.bold)
        .frame(width: width, height: height)
        .border(.black, width: 2)
    }
  }
}

