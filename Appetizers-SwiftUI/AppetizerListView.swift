//
//  AppetizerListView.swift
//  Appetizers-SwiftUI
//
//  Created by Akbar Eka Putra on 27/05/24.
//

import SwiftUI

struct AppetizerListView: View {
  @StateObject var viewModel = AppertizerListViewModel()

  var body: some View {
    ZStack {
      NavigationView {
        List(viewModel.appetizers) { appetizer in
          AppetizerListCell(appetizer: appetizer)
        }
        .navigationTitle("🍟 Appetizers")
      }
      .onAppear {
        viewModel.getAppetizers()
      }

      if viewModel.isLoading {
        LoadingView()
      }
    }
    .alert(item: $viewModel.alertItem) { alertItem in
      Alert(
        title: alertItem.title,
        message: alertItem.message,
        dismissButton: alertItem.dismissButton
      )
    }
  }

}

#Preview{
  AppetizerListView()
}
