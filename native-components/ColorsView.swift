//
//  ColorsView.swift
//  native-components
//
//  Created by Reuben Turner on 3/17/23.
//

import SwiftUI
import AppKit

struct ColorsView: View {
  var body: some View {
    ScrollView(.vertical) {
      if #available(macOS 13.0, *) {
        Grid(alignment: .leading) {
          Group {
            GridRow {
              Rectangle().fill(Color(.labelColor)).frame(width: 100, height: 100).overlay(Text("labelColor").colorInvert())
              Rectangle().fill(Color(.secondaryLabelColor)).frame(width: 100, height: 100).overlay(Text("secondaryLabelColor").colorInvert())
              Rectangle().fill(Color(.tertiaryLabelColor)).frame(width: 100, height: 100).overlay(Text("tertiaryLabelColor"))
              Rectangle().fill(Color(.quaternaryLabelColor)).frame(width: 100, height: 100).overlay(Text("quaternaryLabelColor"))
            }
          }
          Group {
            GridRow {
              Text("systemRedColor")
              ZStack {
                Rectangle().fill(Color(.systemRed)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemRed)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("systemGreenColor")
              ZStack {
                Rectangle().fill(Color(.systemGreen)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemGreen)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("systemBlueColor")
              ZStack {
                Rectangle().fill(Color(.systemBlue)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemBlue)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("systemOrangeColor")
              ZStack {
                Rectangle().fill(Color(.systemOrange)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemOrange)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("systemYellowColor")
              ZStack {
                Rectangle().fill(Color(.systemYellow)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemYellow)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("systemBrownColor")
              ZStack {
                Rectangle().fill(Color(.systemBrown)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemBrown)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("systemPinkColor")
              ZStack {
                Rectangle().fill(Color(.systemPink)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemPink)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("systemPurpleColor")
              ZStack {
                Rectangle().fill(Color(.systemPurple)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemPurple)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("systemTealColor")
              ZStack {
                Rectangle().fill(Color(.systemTeal)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemTeal)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("systemIndigoColor")
              ZStack {
                Rectangle().fill(Color(.systemIndigo)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemIndigo)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
          }
          Group {
            GridRow {
              Text("systemMintColor")
              ZStack {
                Rectangle().fill(Color(.systemMint)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemMint)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("systemCyanColor")
              ZStack {
                Rectangle().fill(Color(.systemCyan)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemCyan)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("systemGrayColor")
              ZStack {
                Rectangle().fill(Color(.systemGray)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.systemGray)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("linkColor")
              ZStack {
                Rectangle().fill(Color(.linkColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.linkColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("placeholderTextColor")
              ZStack {
                Rectangle().fill(Color(.placeholderTextColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.placeholderTextColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("windowFrameColor")
              ZStack {
                Rectangle().fill(Color(.windowFrameTextColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.windowFrameTextColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("selectedMenuItemTextColor")
              ZStack {
                Rectangle().fill(Color(.selectedMenuItemTextColor)).frame(width: 100, height: 100)
                Text("light")
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.selectedMenuItemTextColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("alternateSelectedControlTextColor")
              ZStack {
                Rectangle().fill(Color(.alternateSelectedControlTextColor)).frame(width: 100, height: 100)
                Text("light")
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.alternateSelectedControlTextColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("headerTextColor")
              ZStack {
                Rectangle().fill(Color(.headerTextColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.headerTextColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("separatorColor")
              ZStack {
                Rectangle().fill(Color(.separatorColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.separatorColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
          }
          Group {
            GridRow {
              Text("gridColor")
              ZStack {
                Rectangle().fill(Color(.gridColor)).frame(width: 100, height: 100)
                Text("light")
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.gridColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("textColor")
              ZStack {
                Rectangle().fill(Color(.textColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.textColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("textBackgroundColor")
              ZStack {
                Rectangle().fill(Color(.textBackgroundColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.textBackgroundColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("selectedTextColor")
              ZStack {
                Rectangle().fill(Color(.selectedTextColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.selectedTextColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("selectedTextBackgroundColor")
              ZStack {
                Rectangle().fill(Color(.selectedTextBackgroundColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.selectedTextBackgroundColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("unemphasizedSelectedTextBackgroundColor")
              ZStack {
                Rectangle().fill(Color(.unemphasizedSelectedTextBackgroundColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.unemphasizedSelectedTextBackgroundColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("unemphasizedSelectedTextColor")
              ZStack {
                Rectangle().fill(Color(.unemphasizedSelectedTextColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.unemphasizedSelectedTextColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.light)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("windowBackgroundColor")
              ZStack {
                Rectangle().fill(Color(.windowBackgroundColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.light)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.windowBackgroundColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.dark)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("underPageBackgroundColor")
              ZStack {
                Rectangle().fill(Color(.underPageBackgroundColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.underPageBackgroundColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.dark)
              }.colorScheme(.dark)
            }
          }
          Group {
            GridRow {
              Text("controlBackgroundColor")
              ZStack {
                Rectangle().fill(Color(.controlBackgroundColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.controlBackgroundColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.dark)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("selectedContentBackgroundColor")
              ZStack {
                Rectangle().fill(Color(.selectedContentBackgroundColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.selectedContentBackgroundColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.dark)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("unemphasizedSelectedContentBackgroundColor")
              ZStack {
                Rectangle().fill(Color(.unemphasizedSelectedContentBackgroundColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.unemphasizedSelectedContentBackgroundColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.dark)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("findHighlightColor")
              ZStack {
                Rectangle().fill(Color(.findHighlightColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.findHighlightColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.dark)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("controlColor")
              ZStack {
                Rectangle().fill(Color(.controlColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.controlColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.dark)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("selectedControlColor")
              ZStack {
                Rectangle().fill(Color(.selectedControlColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.selectedControlColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.dark)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("selectedControlTextColor")
              ZStack {
                Rectangle().fill(Color(.selectedControlTextColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.selectedControlTextColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.dark)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("disabledControlTextColor")
              ZStack {
                Rectangle().fill(Color(.disabledControlTextColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.disabledControlTextColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.dark)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("keyboardFocusIndicatorColor")
              ZStack {
                Rectangle().fill(Color(.keyboardFocusIndicatorColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.keyboardFocusIndicatorColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.dark)
              }.colorScheme(.dark)
            }
            GridRow {
              Text("controlAccentColor")
              ZStack {
                Rectangle().fill(Color(.controlAccentColor)).frame(width: 100, height: 100)
                Text("light").colorScheme(.dark)
              }.colorScheme(.light)
              ZStack {
                Rectangle().fill(Color(.controlAccentColor)).frame(width: 100, height: 100)
                Text("dark").colorScheme(.dark)
              }.colorScheme(.dark)
            }
          }
        }.frame(maxWidth: .infinity, alignment: .center)
      } else {
        // Fallback on earlier versions
      }
    }
  }
}

struct ColorsView_Previews: PreviewProvider {
  static var previews: some View {
    ColorsView()
  }
}
