//
//  ContentView.swift
//  InterfaceReproduction
//
//  Created by Kiho Okazawa on 2022-11-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                //First layer (background)
                Color.black
                    .ignoresSafeArea()
                
                //Second layer
                VStack{
                    
                    
                }
                .padding()
            }
            .navigationTitle("Workouts")    
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
