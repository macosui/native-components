//
//  native_componentsApp.swift
//  native-components
//
//  Created by Reuben Turner on 2/24/23.
//

import SwiftUI

@main
struct native_componentsApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
    WindowGroup(id: "whats-new") {
      Text("Hello!")
    }
  }
}
