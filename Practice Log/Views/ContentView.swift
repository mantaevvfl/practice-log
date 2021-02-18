//
//  ContentView.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-10.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var stateController: StateController
    
    var body: some View {
        // Root View
        PracticeLog()
            .environmentObject(stateController)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StateController())
    }
}
