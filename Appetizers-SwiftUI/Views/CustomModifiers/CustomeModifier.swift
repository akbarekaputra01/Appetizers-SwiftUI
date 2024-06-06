//
//  CustomeModifier.swift
//  Appetizers-SwiftUI
//
//  Created by Akbar Eka Putra on 06/06/24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {

  func body(content: Content) -> some View {
    content
      .buttonStyle(.bordered)
      .tint(.brandPrimary)
      .controlSize(.large)
  }
}

extension View {
  func standardButtonStyle() -> some View {
    self.modifier(StandardButtonStyle())
  }
}
