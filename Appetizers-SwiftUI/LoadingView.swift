//
//  LoadingView.swift
//  Appetizers-SwiftUI
//
//  Created by Akbar Eka Putra on 02/06/24.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
  func makeUIView(context: Context) -> UIActivityIndicatorView {
    let activityIndictorView = UIActivityIndicatorView(style: .large)
    activityIndictorView.color = .brandPrimaryColor
    activityIndictorView.startAnimating()
    return activityIndictorView
  }

  func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
  }

}

struct LoadingView: View {
  var body: some View {
    ZStack {
      Color(.systemBackground)
        .edgesIgnoringSafeArea( /*@START_MENU_TOKEN@*/.all /*@END_MENU_TOKEN@*/)

      ActivityIndicator()
    }
  }
}

#Preview {
    LoadingView()
}
