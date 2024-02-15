//
//  PlantNameView.swift
//  TreeHuggers
//
//  Created by tamera middlebrooks on 2/5/24.
//

import SwiftUI

struct PlantNameView: View {
    @State private var showingAlert = false
    @AppStorage("plantName") var plantName: String = ""
    @State private var tempName =  ""
    
    let linearGradientBG = LinearGradient(colors: [Color.teal, Color.blue], startPoint: .top, endPoint: .bottom)

    
    var body: some View {
        ZStack{
            linearGradientBG
                .ignoresSafeArea(.all)

            
            VStack{
                Button("Click here to name me!") {
                    showingAlert.toggle()
                }
                .font(.title)
                .sfRoundFontStyle()
                .font(.system(size: 24))
                .foregroundStyle(.white)
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                .multilineTextAlignment(.center)
                .padding([.bottom], 75)

                .alert("Plant Name", isPresented: $showingAlert) {
                    
                    TextField("Enter my new name", text: $tempName)
                    
                    Button("OK", action: submit)

                    Button("Cancel",  role: .destructive)
                            {
                        //                plantName = ""
                        showingAlert = false // <-
                    }
                
                   //
                } message: {
                    Text("Enter the name of your new friend.")
                }
                
                
                Text("Your Plant Is Named: \(plantName)!")
                    .padding([.top], 15)
                    .font(.title2)
                //        .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                
                
                Button("Reset my name") {
                    // Update the value stored in UserDefaults
                    //^ needs to be bigger
                    plantName = ""
                }
                .font(.title2)
                .sfRoundFontStyle()
                .padding([.top], 95)
                .foregroundStyle(Color.red)
                .fontWeight(.heavy)
                .font(.system(size: 22))
                
                
            }

        }
    }
    
            func submit() {
                plantName = tempName
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
    PlantNameView()
}
