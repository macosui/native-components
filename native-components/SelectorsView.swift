//
//  SelectorsView.swift
//  native-components
//
//  Created by Reuben Turner on 7/4/23.
//

import SwiftUI

struct SelectorsView: View {
  @State private var selectedDate = Date()
  
  var body: some View {
    ScrollView(.vertical) {
      if #available(macOS 13.0, *) {
        VStack(alignment: HorizontalAlignment.leading) {
          Group {
            Text("Date & Time Pickers").font(.title).padding(EdgeInsets(top: 8, leading: 8, bottom: 0, trailing: 8))
            DatePicker("", selection: $selectedDate).datePickerStyle(GraphicalDatePickerStyle())
          }
        }
      } else {
        // Fallback on earlier versions
      }
    }
  }
}

struct SelectorsView_Previews: PreviewProvider {
  static var previews: some View {
    SelectorsView()
  }
}
