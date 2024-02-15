//
//  PlantChoiceHeader.swift
//  TreeHuggers
//
//  Created by Nigel Krajewski on 2/6/24.
//

import SwiftUI

struct PlantChoiceHeader: View {
    var body: some View {
        VStack {
            HStack {
                Text(.now, style: .date)
                Spacer()
                Text(.now, style: .time)
            }
            .sfRoundFontStyle(.title2)
            .padding()
            .fontWeight(.semibold)
            .shadow(color: .white, radius: 0.2, x: 0.1, y: 0.1)
            .shadow(color: .white, radius: 0.2, x: 0.1, y: 0.1)
            .shadow(color: .white, radius: 0.2, x: -0.1, y: -0.1)
            .shadow(color: .white, radius: 0.2, x: -0.1, y: -0.1)
            Image("Strawberry")
                .resizable()
                .scaledToFit()
                .padding([.leading, .trailing], 80)
                .shadow(color: .black, radius: 6, x: 0.1, y: 1.5)
            Text("Choose a friend")
                .sfRoundFontStyle(.title2)
                .padding()
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .shadow(color: .black, radius: 0.2, x: 0.1, y: 0.1)
                .shadow(color: .black, radius: 0.2, x: 0.1, y: 0.1)
                .shadow(color: .black, radius: 0.2, x: 0.1, y: 0.1)
                .shadow(color: .black, radius: 0.2, x: 0.1, y: 0.1)
                .shadow(color: .black, radius: 0.2, x: -0.1, y: -0.1)
                .shadow(color: .black, radius: 0.2, x: -0.1, y: -0.1)
                .shadow(color: .black, radius: 0.2, x: -0.1, y: -0.1)
                .shadow(color: .black, radius: 0.2, x: -0.1, y: -0.1)
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(colors: [.orangeGradientLight, .orange, .orangeGradientLight], startPoint: .bottomLeading, endPoint: .topTrailing))
                .frame(height: 10)
                .padding([.leading, .trailing])
                .shadow(color: .black, radius: 2, x: 0.1, y: 1.5)
        }
        
    }
}

#Preview {
    PlantChoiceHeader()
}
