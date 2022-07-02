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
    ZStack {
      Color.red
        .edgesIgnoringSafeArea(.all)
      
      VStack(spacing: 20) {
        Text(labelText)
          .font(.largeTitle)
          .fontWeight(.bold)
        
        Button(action: {
          labelText = "tap"
        }) {
          Text("tap")
            .font(.title)
            .foregroundColor(.black)
            .fontWeight(.bold)
            .frame(width: 100, height: 30)
            .border(.black, width: 2)
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

