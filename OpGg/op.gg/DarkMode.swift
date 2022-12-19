//
//  DarkMode.swift
//  op.gg
//
//커맨드 쉬프트 a
//  Created by June on 2022/12/02.import SwiftUI
import SwiftUI
struct Theme {
  static func backgroundColor(scheme: ColorScheme) -> Color {
    let lightColor = Color.white
      let darkColor = Color("backGroundColor")
    
    switch scheme {
    case .light:
      return lightColor
    case .dark:
      return darkColor
    @unknown default:
      return lightColor
    }
  }
}
