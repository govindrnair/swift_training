//
//  FunctionBootcamp.swift
//  MacBootcamp
//
//  Created by Govind Nair on 1/5/25.
//

import SwiftUI

struct FunctionBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("PRESS ME")
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
        backgroundColor = Color.yellow
    }
}

#Preview {
    FunctionBootcamp()
}
