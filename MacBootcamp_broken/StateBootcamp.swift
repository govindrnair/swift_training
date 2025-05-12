//
//  StateBootcamp.swift
//  MacBootcamp
//
//  Created by Govind Nair on 1/5/25.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            LazyVStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("\(count)")
                    .font(.headline)
                    .underline()
                
                LazyHStack(spacing: 20) {
                    Button("Button 1") {
                        backgroundColor = .red
                        myTitle = "Button 1 Pressed!"
                        count += 1
                    }
                    .buttonStyle(.plain)

                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle = "Button 2 Pressed!"
                        count -= 1
                    }
                    .buttonStyle(.plain)
                    
                    Button("Button 3") {
                        backgroundColor = .blue
                        myTitle = "Button 3 Pressed!"
                        count += 10
                    }
                    .buttonStyle(.bordered)
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
