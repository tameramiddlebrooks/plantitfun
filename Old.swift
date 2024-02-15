//
//  Old.swift
//  TreeHuggers
//
//  Created by Jalen Spires on 1/30/24.
//

import Foundation


// For The Categories
//                customRectangle(Category: "Fruit")
//                customRectangle(Category: "")
//                customRectangle(Category: "Vegetables")
//                customRectangle(Category: "HousePlant")
// Old Code writing the categories manually






//
//  ContentView.swift
//  TreeHuggers
//
//  Created by Jalen Spires on 1/26/24.
////
//import SwiftUI
//
//struct ContentView: View {
//    @State private var selectedCategory: String? = nil
//    @State private var selectedVariety: PlantVariety? = nil
//    
//    let columns = [
//        GridItem(.flexible(minimum: 30, maximum: 30))
//    ]
//    
//    var body: some View {
//        NavigationView {
//            ZStack {
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.teal, Color.blue]),
//                    startPoint: .top,
//                    endPoint: .bottom)
//                    .ignoresSafeArea()
//                
//                VStack {
//                    Text("Welcome")
//                        .foregroundStyle(Color.white)
//                        .padding(.top, 30)
//                        .padding(.bottom, 20)
//                        .font(.system(size: 25, design: .rounded))
//                    
//                    VStack {
//                        ScrollView(.horizontal, showsIndicators: false) {
//                            HStack(spacing: 10) {
//                                ForEach(getItems(for: selectedCategory), id: \.self.imageName) { variety in
//                                    Button(action: {
//                                        selectedVariety = variety
//                                        print("Button tapped for \(variety.name)")
//                                    }, label: {
//                                        VStack {
//                                            Image(variety.imageName)
//                                                .resizable()
//                                                .scaledToFit()
//                                                .frame(width: 200, height: 180)
//                                            Text(variety.name)
//                                                .font(.system(size: 25, design: .rounded))
//                                                .foregroundColor(Color.white)
//                                        }
//                                    })
//                                }
//                            }
//                        }
//                    }
//                    HStack {
//                        if selectedVariety == nil && selectedCategory == nil  {
//                            Text("Choose a Category")
//                                .foregroundStyle(Color.white)
//                                .font(.system(size: 25, design: .rounded))
//                                .padding(.top, 20)
//                                .padding(.bottom, 10)
//                        } else {
//                            Text("Choose a Friend")
//                                .foregroundStyle(Color.white)
//                                .font(.system(size: 25, design: .rounded))
//                                .padding(.top, 20)
//                                .padding(.bottom, 10)
//                            
//                            // Continue button
//                            NavigationLink(destination: NextPageView(), label: {
//                                Text("Continue")
//                                    .padding()
//                                    .background(Color.green)
//                                    .foregroundColor(Color.white)
//                                    .cornerRadius(10)
//                                
//                            })
//                            .padding(.bottom, 20)
//                        }
//                    }
//                    
//                    VStack {
//                        ForEach(0..<rectangleContent.count, id: \.self) { index in
//                            Button(action: {
//                                selectedCategory = rectangleContent[index]
//                                selectedVariety = nil // Reset selectedVariety when category changes
//                                print("Button tapped at index \(index)")
//                            }, label: {
//                                customRectangle(Category: rectangleContent[index])
//                            })
//                        }
//                    }
//                    
//                    Spacer()
//                }
//            }
//        }
//    }
//    
//    func getItems(for category: String?) -> [PlantVariety] {
//        switch category {
//        case "Fruit":
//            return fruitVarieties
//        case "Vegetables":
//            return vegetableVarieties
//        case "HousePlants":
//            return housePlantVarieties
//        case "Herbs":
//            return herbVarieties
//        case "Flower":
//            return flowerVarieties
//        default:
//            return []
//        }
//    }
//}
//
//struct NextPageView: View {
//    var body: some View {
//        Text("Next Page Content Goes Here")
//            .navigationBarTitle("Next Page", displayMode: .inline)
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
