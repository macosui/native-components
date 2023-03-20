//
//  ContentViewLegacy.swift
//  native-components
//
//  Created by Reuben Turner on 3/7/23.
//

import SwiftUI

struct ContentViewLegacy: View {
  @StateObject var viewModel = PageModel()
  @State private var showGreeting = true
  @State private var inputText: String = ""
  @FocusState private var inputFieldIsFocused: Bool
  @State private var searchText = ""
  
  var body: some View {
    NavigationView {
      List {
        ForEach(viewModel.pages) { page in
          NavigationLink(page.name, tag: page.id, selection: $viewModel.selectedId) {
            Text(page.name)
              .navigationTitle(page.name)
            Button("Button", action: {})
            Toggle("Show welcome message", isOn: $showGreeting).toggleStyle(SwitchToggleStyle())
          }
        }
      }
      .listStyle(.sidebar)
      
      Text("No selection")
      
      TextField(
        "Type some text here",
        text: $inputText
      ).onChange(of: inputFieldIsFocused) { isFocused in
        // this will get called after the delay
      }
      .onAppear {
        // key part: delay setting isFocused until after some-internal-iOS setup
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
          inputFieldIsFocused = true
        }
      }.textFieldStyle(.roundedBorder).disabled(false).padding().frame(width: 200)
    }
  }
  
  struct ContentViewLegacy_Previews: PreviewProvider {
    static var previews: some View {
      ContentViewLegacy()
    }
  }
}
