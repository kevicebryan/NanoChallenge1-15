//
//  Your_Personal_SnackApp.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 18/03/23.
//

import SwiftUI

@main
struct Your_Personal_SnackApp: App {
  @StateObject private var dataController = DataController()

  var body: some Scene {
    WindowGroup {
      ContentView().environment(\.managedObjectContext, dataController.container.viewContext)
    }
  }
}
