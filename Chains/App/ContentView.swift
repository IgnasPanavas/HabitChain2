//
//  ContentView.swift
//  Chains
//
//  Created by Ignas Panavas on 1/29/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        VStack {
            HabitTitleCardView(name: "Aiden")
            HabitTitleCardView(name: "Jeff")
            
        }
        
    }
}

#Preview {
    ContentView()
}
