//
//  Model.swift
//  Practice Log
//
//  Created by Ali Mantaev on 2021-02-17.
//

import Foundation


final class StateController : ObservableObject {
    // The business logic of our app resides here
    @Published var profile: Profile = TestData.profile
    
    func add(_ session: Session) {
        profile.add(session: session)
    }
}
