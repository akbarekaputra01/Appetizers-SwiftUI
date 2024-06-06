//
//  RemoteImage.swift
//  Appetizers-SwiftUI
//
//  Created by Akbar Eka Putra on 05/06/24.
//

import SwiftUI

final class ImageLoader: ObservableObject {
  @Published var image: Image? = nil

  func load(fromURLString urlString: String) {
    NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
      guard let uiImage = uiImage else { return }
      DispatchQueue.main.async {
        self.image = Image(uiImage: uiImage)
      }
    }
  }
}

struct RemoteImage: View {
  var image: Image?

  var body: some View {
    image?
      .resizable()
      .aspectRatio(contentMode: .fit)

      ?? Image("food-placeholder")
      .resizable()
      .aspectRatio(contentMode: .fit)
  }
}

struct AppetizerRemoteImage: View {
  @StateObject var imageLoader = ImageLoader()
  let urlString: String

  var body: some View {
    RemoteImage(image: imageLoader.image)
      .onAppear { imageLoader.load(fromURLString: urlString) }
  }
}

#Preview{
  AppetizerRemoteImage(
    urlString:
      "https://seanallen-course-backend.herokuapp.com/images/appetizers/blackened-shrimp.jpg")
}