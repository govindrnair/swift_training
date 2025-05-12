//
//  BindingBootcamp.swift
//  MacBootcamp
//
//  Created by Govind Nair on 12/5/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .yellow
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Dummy Text")
                BindingBootcampButton(backgroundColor: $backgroundColor)
            }
        }
    }
}

struct BindingBootcampButton: View {
    
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button(action:{
            backgroundColor = Color.orange
        }, label: {
            Text("Press Me")
                .padding()
                .background(.gray)
                .cornerRadius(10)
        })
        .buttonStyle(.plain)
    }
}

#Preview {
    BindingBootcamp()
}
