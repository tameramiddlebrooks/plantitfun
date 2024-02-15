//
//  Variety Of Plants.swift
//  TreeHuggers
//
//  Created by Jalen Spires on 1/28/24.
//

import Foundation
import SwiftUI


struct PlantVariety: Identifiable {
    let id = UUID()
    let imageName: String
    let name: String
}

let fruitVarieties: [PlantVariety] = [
    PlantVariety(imageName: "Strawberry", name: "Strawberry"),
    PlantVariety(imageName: "Apple", name: "Apple"),
    PlantVariety(imageName: "Orange", name: "Orange"),
]

let vegetableVarieties: [PlantVariety] = [
    PlantVariety(imageName: "Carrot", name: "Carrot"),
    PlantVariety(imageName: "Corn", name: "Corn"),
    PlantVariety(imageName: "Broccoli", name: "Broccoli"),
]

let housePlantVarieties: [PlantVariety] = [
    PlantVariety(imageName: "Aloe Vera", name: "Aloe Vera"),
    PlantVariety(imageName: "SnakePlant", name: "Snake Plant"),
    PlantVariety(imageName: "Something", name: "Something"),
]

let herbVarieties: [PlantVariety] = [
    PlantVariety(imageName: "Basil", name: "Basil"),
    PlantVariety(imageName: "Parsley", name: "Parsley"),
    PlantVariety(imageName: "Cilantro", name: "Cilantro"),
]

let flowerVarieties: [PlantVariety] = [
    PlantVariety(imageName: "SunFlower", name: "Sunflower"),
    PlantVariety(imageName: "Petunia", name: "Petunia"),
    PlantVariety(imageName: "MariGolds", name: "Marigolds"),
]
