//
//  ButtonsView.swift
//  native-components
//
//  Created by Reuben Turner on 3/7/23.
//

import SwiftUI

struct ButtonsView: View {
  @State private var toggle = false
  @State private var favoriteColor = 0
  @AppStorage("radioSelection") private var radioSelection = 0
  @State var text = "Pulldown options"
  @State private var selectedItem: Int = 0
  
  var body: some View {
    ScrollView(.vertical) {
      VStack(alignment: HorizontalAlignment.leading) {
        Group {
          Group {
            Text("Primary Buttons").font(.title).foregroundColor(.secondary)
            HStack {
              Button("Mini", action: {}).controlSize(.mini).buttonStyle(.borderedProminent)
              Button("Small", action: {}).controlSize(.small).buttonStyle(.borderedProminent)
              Button("Regular", action: {}).controlSize(.regular).buttonStyle(.borderedProminent)
              Button("Large", action: {}).controlSize(.large).buttonStyle(.borderedProminent)
              //            ZStack {
              //              Rectangle().fill(.white).frame(width: 100, height: 100)
              //              Button("", action: {}).controlSize(.large).buttonStyle(.borderedProminent).colorScheme(.light)
              //            }
              //            ZStack {
              //              Rectangle().fill(.black).frame(width: 100, height: 100)
              //              Button("", action: {}).controlSize(.large).buttonStyle(.borderedProminent).colorScheme(.dark)
              //            }
            }
            Text("Disabled Primary Buttons").font(.title)
            HStack {
              Button("Mini", action: {}).controlSize(.mini).buttonStyle(.borderedProminent).disabled(true)
              Button("Small", action: {}).controlSize(.small).buttonStyle(.borderedProminent).disabled(true)
              Button("Regular", action: {}).controlSize(.regular).buttonStyle(.borderedProminent).disabled(true)
              Button("Large", action: {}).controlSize(.large).buttonStyle(.borderedProminent).disabled(true)
            }
          }
          Group {
            Text("Secondary Buttons").font(.title)
            HStack {
              Button("Mini", action: {}).controlSize(.mini)
              Button("Small", action: {}).controlSize(.small)
              Button("Regular", action: {}).controlSize(.regular)
              Button("Large", action: {}).controlSize(.large)
            }
            Text("Disabled Secondary Buttons").font(.title)
            HStack {
              Button("Mini", action: {}).controlSize(.mini).disabled(true)
              Button("Small", action: {}).controlSize(.small).disabled(true)
              Button("Regular", action: {}).controlSize(.regular).disabled(true)
              Button("Large", action: {}).controlSize(.large).disabled(true)
            }
          }
          Group {
            Text("Borderless Buttons").font(.title)
            HStack {
              Button("Mini", action: {}).controlSize(.mini).buttonStyle(.borderless)
              Button("Small", action: {}).controlSize(.small).buttonStyle(.borderless)
              Button("Regular", action: {}).controlSize(.regular).buttonStyle(.borderless)
              Button("Large", action: {}).controlSize(.large).buttonStyle(.borderless)
            }
            Text("Disabled Borderless Buttons").font(.title)
            HStack {
              Button("Mini", action: {}).controlSize(.mini).buttonStyle(.borderless).disabled(true)
              Button("Small", action: {}).controlSize(.small).buttonStyle(.borderless).disabled(true)
              Button("Regular", action: {}).controlSize(.regular).buttonStyle(.borderless).disabled(true)
              Button("Large", action: {}).controlSize(.large).buttonStyle(.borderless).disabled(true)
            }
          }
          
        }
        Group {
          Text("Icon Buttons").font(.title)
          Text("With Borders")
          HStack {
            Button(action: {}) {
              Image(systemName: "plus")
            }
            Button(action: {}) {
              Image(systemName: "chevron.left")
            }
            Button(action: {}) {
              Image(systemName: "chevron.right")
            }
            Button(action: {}) {
              Image(systemName: "sidebar.left")
            }
            Button(action: {}) {
              Image(systemName: "sidebar.right")
            }
          }
          Text("Borderless")
          HStack {
            Button(action: {}) {
              Image(systemName: "plus")
            }.buttonStyle(.borderless)
            Button(action: {}) {
              Image(systemName: "chevron.left")
            }.buttonStyle(.borderless)
            Button(action: {}) {
              Image(systemName: "chevron.right")
            }.buttonStyle(.borderless)
            Button(action: {}) {
              Image(systemName: "sidebar.left")
            }.buttonStyle(.borderless)
            Button(action: {}) {
              Image(systemName: "sidebar.right")
            }.buttonStyle(.borderless)
          }
        }
        Group {
          Text("Help Button")
          HelpButton(action: {})
        }
        Text("Switches").font(.title)
        if #available(macOS 13.0, *) {
          Group {
            Grid(alignment: .topLeading) {
              GridRow {
                Text("Mini")
                Toggle("", isOn: $toggle).toggleStyle(SwitchToggleStyle()).padding(.bottom, 8).controlSize(.mini).gridColumnAlignment(.center)
              }
              GridRow {
                Text("Small")
                Toggle("", isOn: $toggle).toggleStyle(SwitchToggleStyle()).padding(.bottom, 8).controlSize(.small).gridColumnAlignment(.center)
              }
              GridRow {
                Text("Regular")
                Toggle("", isOn: $toggle).toggleStyle(SwitchToggleStyle()).padding(.bottom, 16).controlSize(.regular).gridColumnAlignment(.center)
              }
            }
          }
        } else {
          HStack {
            Text("Mini")
            Toggle("", isOn: $toggle).toggleStyle(SwitchToggleStyle()).padding(.bottom, 16).controlSize(.mini)
          }
          HStack {
            Text("Small")
            Toggle("", isOn: $toggle).toggleStyle(SwitchToggleStyle()).padding(.bottom, 16).controlSize(.small)
          }
          HStack {
            Text("Regular")
            Toggle("", isOn: $toggle).toggleStyle(SwitchToggleStyle()).padding(.bottom, 16).controlSize(.regular)
          }
        }
        //        Group {
        //          HStack {
        //            ZStack {
        //              Rectangle().fill(Color(.underPageBackgroundColor)).frame(width: 100, height: 100).colorScheme(.dark)
        //              Toggle("", isOn: $toggle).toggleStyle(SwitchToggleStyle()).padding(.bottom, 16).colorScheme(.dark)
        //            }
        //            ZStack {
        //              Rectangle().fill(Color(.underPageBackgroundColor)).frame(width: 100, height: 100).colorScheme(.light)
        //              Toggle("", isOn: $toggle).toggleStyle(SwitchToggleStyle()).padding(.bottom, 16).colorScheme(.light)
        //            }
        //          }
        //        }
        Group {
          Text("Checkbox").font(.title)
          HStack {
            Toggle("", isOn: $toggle).toggleStyle(.checkbox).controlSize(.mini)
            Toggle("", isOn: $toggle).toggleStyle(.checkbox).controlSize(.small)
            Toggle("", isOn: $toggle).toggleStyle(.checkbox).controlSize(.regular)
            Toggle("", isOn: $toggle).toggleStyle(.checkbox).controlSize(.large)
          }
        }
        Group {
          Text("Radio").font(.title)
          Picker(selection: $radioSelection, label: Text("System Theme")) {
            Text("Light").tag(0)
            Text("Dark").tag(1)
          }.pickerStyle(.radioGroup)
        }
        Group {
          Text("Segmented Control").font(.title)
          Picker("", selection: $favoriteColor) {
            Text("First").tag(0)
            Text("Second").tag(1)
            Text("Third").tag(2)
          }
          .pickerStyle(.segmented).padding(.bottom, 16)
        }
        Group {
          Text("Pulldown Button (Menu)").font(.title)
          Menu {
            Button(action: { text = "Option 1" }) {
              Label("Option 1", systemImage: "pencil")
            }
            Button(action: { text = "Option 2" }) {
              Label("Option 2", systemImage: "pencil")
            }
         } label: {
           Text(text)
         }
        }
        Group {
          Text("Popup Button (Picker)").font(.title)
          Picker("Options", selection: $selectedItem) {
            Text("Option 1").tag(0)
            Text("Option 2").tag(1)
          }
        }
      }.padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)).frame(maxWidth: .infinity, alignment: .leading)
    }
  }
}

struct ButtonsView_Previews: PreviewProvider {
  static var previews: some View {
    ButtonsView()
  }
}
