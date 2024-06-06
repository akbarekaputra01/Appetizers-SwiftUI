//
//  ContentView.swift
//  Appetizers-SwiftUI
//
//  Created by Akbar Eka Putra on 27/05/24.
//

import SwiftUI

struct AppetizerTabView2: View {
  var body: some View {
    TabView {
      AppetizerListView()
        .tabItem {
          Image(systemName: "house")
          Text("Home")
        }

      AccountView()
        .tabItem {
          Image(systemName: "person")
          Text("Account")
        }

      OrderView()
        .tabItem {
          Image(systemName: "bag")
          Text("Order")
        }
    }
    .accentColor(.brandPrimaryColor)
  }
}

#Preview{
  AppetizerTabView2()
}
