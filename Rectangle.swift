//
//  Rectangle.swift
//  TreeHuggers
//
//  Created by Jalen Spires on 1/27/24.
//

import Foundation
import SwiftUI

let rectangleContent = ["Fruit", "Vegetables", "HousePlants", "Flower", "Herbs",]


let fruits = ["StrawBerry", "Apple", "Orange"]
let vegetables = [ "Carrot", "Corn", "Broccoli"]
let housePlants = ["AloeVera", "SnakePlant", "Something"]
let herbs = ["Basil", "Parsley", "Cilantro"]
let flowers = ["SunFlower", "Petunia", "MariGolds"]



struct customRectangle: View {
    
    let Category: String
    
    var body: some View {
    
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .strokeBorder(Color.gray, lineWidth: 5)
                .background(RoundedRectangle(cornerRadius: 25).fill(LinearGradient(colors: [Color.green, Color.mint], startPoint: .leading, endPoint: .trailing)))
        .frame(width: 325, height: 60)
        Text(Category)
        .foregroundStyle(Color.white)
        .font(.system(size: 25, design: .rounded))
        
        }
        
        
        
        
    }
}


 // Initially I tried to make a normal struct but since this changes the view it needs to be a callable view
#Preview {
    customRectangle(Category: "Vegetables")
}
