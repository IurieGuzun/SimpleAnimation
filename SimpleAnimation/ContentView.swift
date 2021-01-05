//
//  ContentView.swift
//  SimpleAnimation
//
//  Created by Iurie Guzun on 2021-01-04.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var scale: CGFloat = 1

    var body: some View {
        Button(action: {
            self.scale += 1
        }) {
            Text("Tap here")
                .scaleEffect(scale)
                .animation(.linear)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
