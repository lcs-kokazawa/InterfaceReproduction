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
                Spacer()
                
                //Second layer
                ZStack(alignment: .topLeading) {
                    Rectangle().foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: 550)
                    VStack(alignment: .leading, spacing: 15){
                        Text("No Workouts")
                            .foregroundColor(.white)
                            .font(Font.system(size: 20, weight: .heavy))
                            
                    
                        Text("Please check whether you have granted permissions to read Health data in")
                        + Text(" Settings").foregroundColor(.green).fontWeight(.bold)
        
                        + Text(" 　 →")
                        + Text(" Health").foregroundColor(.green).fontWeight(.bold)
                        + Text(" →")
                        + Text(" Data Access & Devices").foregroundColor(.green).fontWeight(.bold)
                        + Text(" →")
                        + Text("   Workout Shoes").foregroundColor(.green).fontWeight(.bold)
                        
                        
                        
                        
                        
                        
                        
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
    
    
    
    
}
