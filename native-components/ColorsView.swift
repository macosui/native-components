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
              Text("light")
            }.colorScheme(.light)
            ZStack {
              Rectangle().fill(Color(.windowBackgroundColor)).frame(width: 100, height: 100)
              Text("light")
            }.colorScheme(.dark)
          }
          GridRow {
            Text("underPageBackgroundColor")
            ZStack {
              Rectangle().fill(Color(.underPageBackgroundColor)).frame(width: 100, height: 100)
              Text("light")
            }.colorScheme(.light)
            ZStack {
              Rectangle().fill(Color(.underPageBackgroundColor)).frame(width: 100, height: 100)
              Text("light")
            }.colorScheme(.dark)
          }
        }
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
