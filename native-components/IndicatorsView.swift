//
//  IndicatorsView.swift
//  native-components
//
//  Created by Reuben Turner on 9/20/24.
//

import SwiftUI

struct IndicatorsView: View {
  @State private var progress = 0.5
  var body: some View {
    ScrollView(.vertical) {
      VStack(alignment: HorizontalAlignment.leading) {
        Group {
          Text("Progress Indicator").font(.title)
          ProgressView(value: progress) { Text("50%") }
          ProgressView(value: progress).progressViewStyle(.circular)
          ProgressView()
        }
      }
    }.padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)).frame(maxWidth: .infinity, alignment: .leading)
  }
}

struct IndicatorsView_Previews: PreviewProvider {
  static var previews: some View {
    IndicatorsView()
  }
}

