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
        //        ZStack(alignment: .leading, content: {
        //          Image(systemName: "magnifyingglass").padding(.leading, 16)
        //          TextField("Search", text: $inputText).textFieldStyle(.roundedBorder).padding(EdgeInsets(top: 8, leading: 8, bottom: 4, trailing: 8))
        //        })
//        List {
//          ForEach(viewModel.pages) { page in
//            NavigationLink(page.name, tag: page.id, selection: $viewModel.selectedId) {
//              Text(page.name)
//                .navigationTitle(page.name)
//            }
//          }
//        }
//        .listStyle(.sidebar)
        List(SidebarItem.allCases, selection: $selectedSidebarItem) { item in
//          HStack {
//            switch item.rawValue {
//            case "buttons":
//              Image(systemName: "button.programmable")
//            case "indicators":
//              Image(systemName: "lines.measurement.horizontal")
//            case "fields":
//              Image(systemName: "character.cursor.ibeam")
//            case "colors":
//              Image(systemName: "square.stack")
//            case "dialogsandsheets":
//              Image(systemName: "square.on.square")
//            case "selectors":
//              Image(systemName: "filemenu.and.selection")
//            default:
//              Image(systemName: "filemenu.and.selection")
//            }
//            NavigationLink(item.rawValue.localizedCapitalized, value: item)
//          }
          NavigationLink(item.rawValue.localizedCapitalized, value: item)
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
//      }.searchable(text: $searchText, placement: .sidebar, prompt: "Find a page").navigationTitle(viewModel.selectedPage?.name ?? "Buttons").searchSuggestions {
//        ForEach(viewModel.pages) { page in
//          Label(page.name, systemImage: "rectangle").labelStyle(.titleOnly).searchCompletion(page.name)
//        }
//      }
      //    }.searchable(text: $searchText, prompt: "Find a page").navigationTitle(viewModel.selectedPage?.name ?? "Buttons")
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


//struct ToolBarView: View {
//  var body: some View {}
//}
//
//struct ToolBarView_Previews: PreviewProvider {
//  static var previews: some View {
//    ToolBarView()
//  }
//}
