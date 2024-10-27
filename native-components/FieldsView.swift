//
//  FieldsView.swift
//  native-components
//
//  Created by Reuben Turner on 9/20/24.
//

import SwiftUI

struct FieldsView: View {
  @State private var username: String = ""
  @FocusState private var emailFieldIsFocused: Bool
    var body: some View {
      ScrollView(.vertical) {
        VStack(alignment: HorizontalAlignment.leading) {
          Group {
            Text("Text Fields").font(.title)
            Text("Regular")
            TextField(
              "Enter text",
              text: $username
            )
            Text("Rounded border")
            TextField(
              "Enter text",
              text: $username
            ).textFieldStyle(.roundedBorder)
            Text("Secondary border")
            TextField(
              "Enter text",
              text: $username
            ).border(.secondary)
          }
        }
      }.padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)).frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    FieldsView()
}
