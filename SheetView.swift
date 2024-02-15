//
//  SheetView.swift
//  TreeHuggers
//
//  Created by tamera middlebrooks on 2/5/24.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
            Button("Dismiss") {
                dismiss()
            }
            .font(.title)
            .padding()
        }
    }

#Preview {
    SheetView()
}
