//
//  LoadingView.swift
//  Appetizers-SwiftUI
//
//  Created by Akbar Eka Putra on 02/06/24.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {

  func makeUIView(context: Context) -> UIActivityIndicatorView {
    let activityIndicatorView = UIActivityIndicatorView(style: .large)
    activityIndicatorView.color = UIColor.uiColorbrandPrimary
    activityIndicatorView.startAnimating()
    return activityIndicatorView
  }

  func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}

struct LoadingView: View {
  var body: some View {
    ZStack {
      Color(.systemBackground)
        .ignoresSafeArea()

      ProgressView()
        .progressViewStyle(CircularProgressViewStyle(tint: .brandPrimary))
        .scaleEffect(2)
    }
  }
}
