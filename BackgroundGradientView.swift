//
//  ButtonListView.swift
//  TreeHuggers
//
//  Created by Nigel Krajewski on 2/5/24.
//

import SwiftUI

struct ButtonListView: View {
    
    var listItems: [PlantCategory] {
        var list: [PlantCategory] = []
        for plant in PlantCategory.allCases {
            list.append(plant)
        }
        return list
    }
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [.lightBlueGradient, .midBlueGradient, .darkBlueGradient, .darkBlueGradient, .midBlueGradient, .lightBlueGradient]),
            startPoint: .topTrailing,
            endPoint: .bottomLeading)
        .ignoresSafeArea()
    }
}


#Preview {
    ZStack {
        ButtonListView()
    }
}
