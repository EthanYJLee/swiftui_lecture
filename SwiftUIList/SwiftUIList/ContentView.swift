//
//  ContentView.swift
//  SwiftUIList
//
//  Created by 이영진 on 2023/03/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            ForEach(1...3,id: \.self){index in
                Text("Item \(index)")
            }
        }
        ZStack{
            Image(systemName: "music")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
