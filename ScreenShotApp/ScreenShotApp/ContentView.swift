//
//  ContentView.swift
//  ScreenShotApp
//
//  Created by Govind Nair on 1/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
