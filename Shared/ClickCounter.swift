//
//  ClickCounter.swift
//  WWDC2020MultipleWindowsApp
//
//  Created by Sebastian Bolling on 2020-06-25.
//

import SwiftUI

class ClickCounter: ObservableObject {
    
    @Published var invocations = 0
    
    func incrementInvocations() {
        invocations += 1
    }
}
