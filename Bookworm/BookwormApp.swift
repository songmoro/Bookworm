//
//  BookwormApp.swift
//  Bookworm
//
//  Created by 송재훈 on 2023/07/12.
//

import SwiftUI

@main
struct BookwormApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext) 
        }
    }
}
