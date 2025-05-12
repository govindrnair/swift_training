//
//  ExtractSubviewBootcamp.swift
//  MacBootcamp
//
//  Created by Govind Nair on 12/5/25.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            
            HStack {
                MyItem(title:"Apples", count:20, color:.yellow)
                MyItem(title:"Oranges is this dynamic? And this is what happens if I make this really really long...", count:30, color:.blue)
                MyItem(title:"Peaches", count:10, color:.white)
                MyItem(title:"Grapes. Afterwards, this is what happens if I were to make the last item also really long. It basically reizes as required. Sweet.", count:100, color:.purple)
            }
        }
    }
}

#Preview {
    ExtractSubviewBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
