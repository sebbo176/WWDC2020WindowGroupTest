//
//  ContentView.swift
//  Shared
//
//  Created by Sebastian Bolling on 2020-06-25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var counter: ClickCounter
    @State var textColor: Color
    
    private let availableColors: [Color] = [.black, .blue, .green, .orange, .pink, .purple, .red, .yellow]
    
    var body: some View {
        VStack {
            Text("Hello, Color!")
                .font(.largeTitle)
                .foregroundColor(textColor)
                .onTapGesture {
                    counter.incrementInvocations()
                    textColor = availableColors.randomElement()!
            }
            Text("\(counter.invocations)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(counter: ClickCounter(), textColor: .black)
    }
}
