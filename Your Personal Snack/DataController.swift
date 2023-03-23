//
//  DataController.swift
//  Your Personal Snack
//
//  Created by Kevin Bryan on 21/03/23.
//

import CoreData
import Foundation

class DataController: ObservableObject {
  let container = NSPersistentContainer(name: "PersonalSnack")

  init() {
    container.loadPersistentStores {
      _, error in if let error = error {
        print("Core data failed to load! \(error.localizedDescription)")
      }
    }
  }
}
