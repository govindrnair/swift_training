//
//  BasicAnimationsBootcamp.swift
//  MacBootcamp
//
//  Created by Govind Nair on 12/5/25.
//

import SwiftUI
struct windowSize {
    // changes let to static - read comments
    let minWidth : CGFloat = 500
    let minHeight : CGFloat = 350
    let maxWidth : CGFloat = 1000
    let maxHeight : CGFloat = 700
}

struct BasicAnimationsBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        Group() {
            VStack {
                Button("Button: \(isAnimated.description)") {
                    withAnimation(
                        Animation
                            .spring
                    ) {
                        isAnimated.toggle()
                    }
                }
                Spacer ()
                RoundedRectangle(cornerRadius: isAnimated ? 15 : 25)
                    .fill(isAnimated ? Color.red : Color.green)
                    .frame(width: 200, height: 300)
                    .offset(x: isAnimated ? 150 : -150)
                Spacer ()
            }
        }
        .frame(minWidth: windowSize().minWidth, minHeight: windowSize().minHeight)
        .frame(maxWidth: windowSize().maxWidth, maxHeight: windowSize().maxHeight)
    }
}

#Preview {
    BasicAnimationsBootcamp()
}
