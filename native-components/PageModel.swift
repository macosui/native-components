//
//  PageModel.swift
//  native-components
//
//  Created by Reuben Turner on 3/7/23.
//

import Foundation

final class PageModel: ObservableObject {
  init(pages: [Page] = PageModel.defaultPages) {
    self.pages = pages
    self.selectedPage = pages[0]
    self.selectedId = pages[0].id
  }
  @Published var pages: [Page]
  @Published var selectedPage: Page?
  @Published var selectedId: String?
  static let defaultPages: [Page] = ["Buttons", "Indicators", "Fields", "Colors", "Dialogs & Sheets", "Selectors"].map({ Page(name: $0)})
}
