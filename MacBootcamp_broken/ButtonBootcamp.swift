//
//  ButtonBootcamp.swift
//  MacBootcamp
//
//  Created by Govind Nair on 1/5/25.
//

import Foundation
import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "Before Pressing"
    var body: some View {
        LazyVStack(spacing: 20) {
            Text(title)
            
            Button ("Press me! (#1)") {
                self.title = "After Pressing #1"
            }
            .buttonStyle(.plain)

            
            Button(action: {
                self.title = "After Pressing #2"
            }, label: {
                Text("Button #2".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(Color.blue)
            })
            .shadow(radius: 10)
            .buttonStyle(.plain)

            
            Button(action: {
                self.title = "After Pressing #3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))))
            })
            .buttonStyle(.plain) // ← Removes default rectangular button behavior
            .contentShape(Circle())
        }
        .padding(50)
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
