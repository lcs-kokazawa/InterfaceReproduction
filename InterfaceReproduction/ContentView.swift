//
//  ContentView.swift
//  InterfaceReproduction
//
//  Created by Kiho Okazawa on 2022-11-17.
//

import SwiftUI
struct ContentView: View {
    
    var firstExample: AttributedString {
        
        let welcomeString = "Welcome"
        var welcomeAttributedString = AttributedString(welcomeString)
        welcomeAttributedString.font = .body.bold()
        welcomeAttributedString.foregroundColor = .green
        
        
        
        
        
        return welcomeAttributedString
        
    }
    
    var secondExample: AttributedString {
        var house = AttributedString(" to our new house\n")
        house.font = .body
        house.foregroundColor = .red
         return house
        
    }
    
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
                        
                        
                        Text("Please check whether you have granted permissions to read Health data in " + firstExample + secondExample)
                    }
                    .padding()
                }
                .navigationTitle("Workouts")
            }
        }
    }
}







//                        + Text(" Settings").foregroundColor("Yellowgreen").fontWeight(.bold)
//
//                        + Text(" 　 →")
//                        + Text(" Health").foregroundColor(.green).fontWeight(.bold)
//                        + Text(" →")
//                        + Text(" Data Access & Devices").foregroundColor(.green).fontWeight(.bold)
//                        + Text(" →")
//                        + Text("   Workout Shoes").foregroundColor(.green).fontWeight(.bold)
//










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "figure.mixed.cardio")
                    Text("Workouts")
                }
            Text("Shoes")
                .tabItem {
                    Image(systemName: "shoeprints.fill")
                    Text("Shoes")
                }
            Text("Setting")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        .accentColor(.green)
        .preferredColorScheme(.dark)
    }
}





