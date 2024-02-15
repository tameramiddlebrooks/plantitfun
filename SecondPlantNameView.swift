//
//  SecondPlantNameView.swift
//  PlantApp
//
//  Created by tamera middlebrooks on 1/31/24.
//

import SwiftUI

struct SecondPlantNameView: View {
    @State private var showingAlert = false
    @AppStorage("plantName") var plantName: String = ""
    
    
    var body: some View {
        Button("What would you like to name me?") {
            showingAlert.toggle()
                }
        
        .font(.title2)
        .multilineTextAlignment(.center)
        
        
    
        .alert("Plant Name", isPresented: $showingAlert) {
            
            TextField("Enter my new name", text: $plantName)
            
            Button("OK", action: submit)
            Button("Cancel",  action:
                    {
                plantName = ""
                showingAlert = false // <-
            })

        } message: {
                    Text("Enter the name of your new friend.")
                }
        
        
        
        Text("Your Plant Is Named: \(plantName)!")
            .padding([.top], 15)        .font(.title2)
//        .fontWeight(.bold)
        .multilineTextAlignment(.center)
        
        
        
        Button("Change my name") {
            // Update the value stored in UserDefaults
            //^ needs to be bigger
        plantName = ""
        }
            }
    
            func submit() {
                print("You entered \(plantName)")
                }
 
    
//    func authenticate() {
//        if plantName == "" {
//            print("You're in!")
//        } else {
//            print("Who are you?")
//        }
//    }
    
            }
        

#Preview {
    SecondPlantNameView()
}
