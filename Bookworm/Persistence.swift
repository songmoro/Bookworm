//
//  Persistence.swift
//  Bookworm
//
//  Created by 송재훈 on 2023/07/13.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load. \(error.localizedDescription )")
            }
        }
    }
}
