//
//  ContentView.swift
//  SimpleAnimation
//
//  Created by Iurie Guzun on 2021-01-04.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var angle: Double = 0
    @State private var borderThickness: CGFloat = 1

    var body: some View {
        Button(action: {
            self.angle += 45
            self.borderThickness += 1
        }) {
            Text("Tap here")
                .padding()
                .border(Color.red, width: borderThickness)
                .rotationEffect(.degrees(angle))
                .animation(.easeIn)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
