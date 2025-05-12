//
//  ExtractedFunctionsBootcamp.swift
//  MacBootcamp
//
//  Created by Govind Nair on 12/5/25.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        //content
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
            .buttonStyle(.plain)
        }
    }
    
    func buttonPressed() {
        if backgroundColor == .yellow {
            backgroundColor = .blue
        } else if backgroundColor == .blue {
            backgroundColor = .pink
        } else {
            backgroundColor = .yellow
        }
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
