//
//  DialogsAndSheetsView.swift
//  native-components
//
//  Created by Reuben Turner on 10/5/24.
//

import SwiftUI

struct DialogsAndSheetsView: View {
  @State private var showingAlert = false
  @State private var showingSheet = false
  
  var body: some View {
    ScrollView(.vertical) {
      Button("Show Dialog") {
        showingAlert = true
      }.alert("Important message", isPresented: $showingAlert) {
        Button("OK", role: .cancel) { }.buttonStyle(.borderedProminent)
      }
      Button("Show Sheet") {
        showingSheet.toggle()
      }.sheet(isPresented: $showingSheet, onDismiss: didDismiss) {
        VStack {
          Text("This is a sheet").font(.largeTitle)
          Button("Dismiss", action: { showingSheet.toggle() }).buttonStyle(.borderedProminent)
        }.padding()
      }
    }.padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)).frame(maxWidth: .infinity, alignment: .leading)
  }
  
  func didDismiss() {
    // Handle the dismissing action.
  }
}

#Preview {
  DialogsAndSheetsView()
}
