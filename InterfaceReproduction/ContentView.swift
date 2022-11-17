//
//  ContentView.swift
//  InterfaceReproduction
//
//  Created by Kiho Okazawa on 2022-11-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            //First layer (background)
            Color.black
                .ignoresSafeArea()
            
            VStack{
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
