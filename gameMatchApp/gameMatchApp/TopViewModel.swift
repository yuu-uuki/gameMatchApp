//
//  TopViewModel.swift
//  gameMatchApp
//
//  Created by 田中裕貴 on 2022/07/02.
//

import Foundation
import SwiftUI

class TopViewModel {
  let width: CGFloat
  let height: CGFloat
  let baseHeight: CGFloat
  let baseWidth: CGFloat
  let viewSpace: CGFloat = 200
  
  init(bounds: CGRect) {
    self.width = bounds.width
    self.height = bounds.height
    self.baseWidth = bounds.width / 2
    self.baseHeight = bounds.height / 2.5
  }
  
}
