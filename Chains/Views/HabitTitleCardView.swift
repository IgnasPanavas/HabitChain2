//
//  HabitTitleCardView.swift
//  Chains
//
//  Created by Ignas Panavas on 2/1/24.
//



// PLAN: CREATE NAVIGATION LINKS FOR "buttons"
//
import SwiftUI

struct HabitTitleCardView: View {
    
    let name: String
    
    var body: some View {
        Text("Hello " + name)
        
        
    }
 
    
}

#Preview {
    HabitTitleCardView(name: "bobby")
}
