//
//  ColorsView.swift
//  native-components
//
//  Created by Reuben Turner on 3/17/23.
//

import SwiftUI

struct ColorsView: View {
  var body: some View {
    ScrollView(.vertical) {
      if #available(macOS 13.0, *) {
        Grid(alignment: .center) {
          GridRow {
            Text("windowBackgroundColor")
            ZStack {
              Rectangle().fill(Color(.windowBackgroundColor)).frame(width: 100, height: 100)
              Text("light").colorScheme(.light)
            }.colorScheme(.light)
            ZStack {
              Rectangle().fill(Color(.windowBackgroundColor)).frame(width: 100, height: 100)
              Text("dark").colorScheme(.dark)
            }.colorScheme(.dark)
          }
          GridRow {
            Text("underPageBackgroundColor")
            ZStack {
              Rectangle().fill(Color(.underPageBackgroundColor)).frame(width: 100, height: 100)
              Text("light").colorScheme(.dark)
            }.colorScheme(.light)
            ZStack {
              Rectangle().fill(Color(.underPageBackgroundColor)).frame(width: 100, height: 100)
              Text("dark").colorScheme(.dark)
            }.colorScheme(.dark)
          }
          GridRow {
            Text("labelColor")
            ZStack {
              Rectangle().fill(Color(.labelColor)).frame(width: 100, height: 100)
              Text("light").colorScheme(.dark)
            }.colorScheme(.light)
            ZStack {
              Rectangle().fill(Color(.labelColor)).frame(width: 100, height: 100)
              Text("dark").colorScheme(.light)
            }.colorScheme(.dark)
          }
          GridRow {
            Text("secondaryLabelColor")
            ZStack {
              Rectangle().fill(Color(.secondaryLabelColor)).frame(width: 100, height: 100)
              Text("light").colorScheme(.dark)
            }.colorScheme(.light)
            ZStack {
              Rectangle().fill(Color(.secondaryLabelColor)).frame(width: 100, height: 100)
              Text("dark").colorScheme(.light)
            }.colorScheme(.dark)
          }
        }.frame(maxWidth: .infinity, alignment: .center)
      } else {
        // Fallback on earlier versions
      }
    }
  }
}

struct ColorsView_Previews: PreviewProvider {
  static var previews: some View {
    ColorsView()
  }
}
