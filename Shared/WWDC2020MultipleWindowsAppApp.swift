//
//  WWDC2020MultipleWindowsAppApp.swift
//  Shared
//
//  Created by Sebastian Bolling on 2020-06-25.
//

import SwiftUI

@main
struct WWDC2020MultipleWindowsAppApp: App {
    
    @StateObject var clickCounter = ClickCounter()
    
    var body: some Scene {
        WindowGroup {
            ContentView(counter: clickCounter, textColor: .black)
        }
    }
}
