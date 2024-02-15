//
//  ListButtonView.swift
//  TreeHuggers
//
//  Created by Nigel Krajewski on 2/5/24.
//

import SwiftUI

struct ListButtonView: View {
    
    @State var plantImage: Image = Image("StrawberrySm")
    @State var plantString: String = "Fruit"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(colors: [.orangeGradientLight, .orange, .orangeGradientLight], startPoint: .bottomLeading, endPoint: .topTrailing))
                .frame(height: 60)
                .shadow(color: .black, radius: 2, x: 0.1, y: 1.5)
                .padding([.top, .bottom])
            HStack {
                plantImage
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .shadow(color: .black, radius: 2, x: 0.1, y: 1.5)
                Spacer()
                Text(plantString)
                    .sfRoundFontStyle(.title)
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .shadow(color: .black, radius: 0.1, x: 0.02, y: 0.02)
                    .shadow(color: .black, radius: 0.1, x: 0.02, y: 0.02)
                    .shadow(color: .black, radius: 0.1, x: 0.02, y: 0.02)
                    .shadow(color: .black, radius: 0.1, x: 0.02, y: 0.02)
                    .shadow(color: .black, radius: 0.1, x: 0.02, y: 0.02)
                    .shadow(color: .black, radius: 0.1, x: 0.02, y: 0.02)
                    .shadow(color: .black, radius: 0.1, x: 0.02, y: 0.02)
                    .shadow(color: .black, radius: 0.1, x: 0.02, y: 0.02)
                    .shadow(color: .black, radius: 0.1, x: 0.02, y: 0.02)
                    .shadow(color: .black, radius: 0.1, x: 0.02, y: 0.02)
                    .shadow(color: .black, radius: 0.1, x: 0.02, y: 0.02)
                    .shadow(color: .black, radius: 0.1, x: 0.02, y: 0.02)
                    .shadow(color: .black, radius: 0.1, x: -0.02, y: -0.02)
                    .shadow(color: .black, radius: 0.1, x: -0.02, y: -0.02)
                    .shadow(color: .black, radius: 0.1, x: -0.02, y: -0.02)
                    .shadow(color: .black, radius: 0.1, x: -0.02, y: -0.02)
                    .shadow(color: .black, radius: 0.1, x: -0.02, y: -0.02)
                    .shadow(color: .black, radius: 0.1, x: -0.02, y: -0.02)
                    .shadow(color: .black, radius: 0.1, x: -0.02, y: -0.02)
                    .shadow(color: .black, radius: 0.1, x: -0.02, y: -0.02)
                    .shadow(color: .black, radius: 0.1, x: -0.02, y: -0.02)
                    .shadow(color: .black, radius: 0.1, x: -0.02, y: -0.02)
                    .shadow(color: .black, radius: 0.1, x: -0.02, y: -0.02)
                    .shadow(color: .black, radius: 0.1, x: -0.02, y: -0.02)
            }
            .padding([.leading, .trailing])
        }
    }
}

#Preview {
    ZStack {
        Rectangle()
            .fill()
        ListButtonView()
    }
}
