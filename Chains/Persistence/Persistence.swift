//
//  Persistence.swift
//  Chains
//
//  Created by Ignas Panavas on 1/29/24.
//

import CoreData
import SwiftUI

struct PersistenceController {
    static let shared = PersistenceController()
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Content saved successfully")
        } catch let error as NSError {
                print("Error Domain: \(error.domain)")
                print("Error Code: \(error.code)")
                print("Error Description: \(error.localizedDescription)")
                print("Error User Info: \(error.userInfo)")
            
        }
    }
    
    func addHabitChain(name: String, context: NSManagedObjectContext) {
        let HabitChainEntity = HabitChain(context: context)
        HabitChainEntity.id = UUID()
        HabitChainEntity.name = name
        HabitChainEntity.isSelected = false
        save(context: context)
    }
    
    func addHabit(name: String, desc: String, time: Date, r: Float, g: Float, b: Float, habitChain: HabitChain) {
        
        let context = habitChain.managedObjectContext
        
        let HabitEntity = Habit(context: context!)
        HabitEntity.name = name
        HabitEntity.desc = desc
        HabitEntity.time = Date.now
        HabitEntity.id = UUID()
        HabitEntity.r = r
        HabitEntity.g = g
        HabitEntity.b = b
        habitChain.addToHabits(HabitEntity)
        save(context: context!)
        
    }
    
    func createSeedData(context: NSManagedObjectContext) {
        /*let habitChain1: HabitChain = addHabitChain(name: "Morning", context: context)
        
        addHabit(name: "Drink water", desc: "Drink lots of water", time: Date.now, r: 0.33, g: 0.62, b: 0.44, habitChain: habitChain1)
        */
    }
    
        //container.viewContext.automaticallyMergesChangesFromParent = true
    }
