//
//  AppetizerListCell.swift
//  Appetizers-SwiftUI
//
//  Created by Akbar Eka Putra on 29/05/24.
//

import SwiftUI

struct AppetizerListCell: View {
  let appetizer: Appetizer

  var body: some View {
    HStack {
      AppetizerRemoteImage(urlString: appetizer.imageURL)
        .frame(width: 120, height: 90)
        .cornerRadius(8)

      VStack(alignment: .leading, spacing: 5) {
        Text(appetizer.name)
          .font(.title2)
          .fontWeight(.medium)
        Text("$\(appetizer.price, specifier: "%.2f")")
          .foregroundStyle(.secondary)
          .fontWeight(.semibold)
      }
      .padding(.leading)
    }
  }
}

#Preview{
  AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
