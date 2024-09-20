//
//  ContentView.swift
//  native-components
//
//  Created by Reuben Turner on 2/24/23.
//

import SwiftUI

enum SidebarItem: String, Identifiable, CaseIterable {
  var id: String { rawValue }
  
  case buttons
  case indicators
  case fields
  case colors
  case dialogsAndSheets
  case selectors
  
  var icon: String {
    switch self {
    case .buttons:
      return "rectangle.on.rectangle"
    case .indicators:
      return "slider.horizontal.3"
    case .fields:
      return "keyboard"
    case .colors:
      return "swatchpalette"
    case .dialogsAndSheets:
      return "rectangle"
    case .selectors:
      return "filemenu.and.selection"
    }
  }
  
  var name: String {
    switch self {
    case .buttons:
      return "Buttons"
    case .indicators:
      return "Indicators"
    case .fields:
      return "Fields"
    case .colors:
      return "Colors"
    case .dialogsAndSheets:
      return "Dialogs & Sheets"
    case .selectors:
      return "Selectors"
    }
  }
}

struct ContentView: View {
  @StateObject var viewModel = PageModel()
  @State private var showGreeting = true
  @State private var inputText: String = ""
  @FocusState private var inputFieldIsFocused: Bool
  @State private var searchText = ""
  
  @State var selectedSidebarItem: SidebarItem = .buttons
  
  var body: some View {
    if #available(macOS 13.0, *) {
      NavigationSplitView {
        List(SidebarItem.allCases, selection: $selectedSidebarItem) { item in
          NavigationLink(value: item) {
            Label {
              Text(item.name)
            } icon: {
              Image(systemName: item.icon)
            }
          }
        }
      } detail: {
        switch selectedSidebarItem {
        case .buttons:
          ButtonsView()
        case .indicators:
          Text(selectedSidebarItem.rawValue)
        case .fields:
          Text(selectedSidebarItem.rawValue)
        case .colors:
          ColorsView()
        case .dialogsAndSheets:
          Text(selectedSidebarItem.rawValue)
        case .selectors:
          SelectorsView()
        }
      }
    } else {
      ContentViewLegacy()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
