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
        ScrollView {
            ForEach(listItems, id: \.self) { item in
                ListButtonView(plantImage: Image(item.rawValue), plantString: item.rawValue)
                    .padding(-5)
            }
            .listRowBackground(Color.clear)
            .padding()
        }
    }
}


#Preview {
    ZStack {
        ButtonListView()
    }
}
