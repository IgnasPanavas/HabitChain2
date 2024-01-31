//
//  ChainsApp.swift
//  Chains
//
//  Created by Ignas Panavas on 1/29/24.
//

import SwiftUI

@main
struct ChainsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
