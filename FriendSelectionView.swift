//
//  FriendSelectionView.swift
//  TreeHuggers
//
//  Created by Nigel Krajewski on 2/6/24.
//

import SwiftUI

struct FriendSelectionView: View {
    var body: some View {
        ZStack {
            BackgroundGradientView()
            VStack{
                PlantChoiceHeader()
                ScrollViewReader(content: { _ in
                    ButtonListView()
                })
            }
        }
    }
}

#Preview {
    FriendSelectionView()
}
