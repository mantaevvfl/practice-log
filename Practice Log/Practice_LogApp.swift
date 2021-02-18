//
//  Practice_LogApp.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-10.
//

import SwiftUI

@main
struct Practice_LogApp: App {
    @StateObject var stateController: StateController = StateController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(stateController)
        }
    }
}
