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
  case windows
  
  var icon: String {
    switch self {
    case .buttons:
      return "button.programmable"
    case .indicators:
      return "progress.indicator"
    case .fields:
      return "keyboard"
    case .colors:
      return "swatchpalette"
    case .dialogsAndSheets:
      return "rectangle"
    case .selectors:
      return "filemenu.and.selection"
    case .windows:
      return "macwindow"
    }
  }
  
  var name: String {
    switch self {
    case .buttons:
      return "Buttons & Controls"
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
    case .windows:
      return "Windows"
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
        List(selection: $selectedSidebarItem) {
          Section {
            ForEach(SidebarItem.allCases) { item in
                NavigationLink(value: item) {
                Label {
                  Text(item.name)
                } icon: {
                  Image(systemName: item.icon).foregroundStyle(.white)
                }
              }
            }
          }
        }
      } detail: {
        switch selectedSidebarItem {
        case .buttons:
          ButtonsView()
        case .indicators:
          IndicatorsView()
        case .fields:
          FieldsView()
        case .colors:
          ColorsView()
        case .dialogsAndSheets:
          DialogsAndSheetsView()
        case .selectors:
          SelectorsView()
        case .windows:
          VStack {
            WindowView()
          }
        }
      }.searchable(text: $inputText, placement: .sidebar, prompt: "Find a page")
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

@available(macOS 13.0, *)
struct WindowView: View {
  @Environment(\.openWindow) var openWindow
  
  var body: some View {
    Button("Open New Window") {
      openWindow(id: "whats-new")
    }
  }
}
