//
//  ActionCardView.swift
//  DoctorsApp
//
//  Created by Matvei Khlestov on 29.07.2024.
//

import SwiftUI

struct ActionCardView: View {
    
    let color: Color
    let image: Image
    let title: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 22)
                .frame(width: 112, height: 112)
                .foregroundStyle(color)
            VStack(spacing: 14) {
                image
                    .resizable()
                    .frame(width: 42, height: 42)
                    .foregroundStyle(.white)
                    .padding(.top, 21)
                Text(title)
                    .font(.system(size: 16, weight: .regular))
                    .foregroundStyle(.white)
                    .padding(.bottom, 16)
            }
        }
    }
}

#Preview {
    ActionCardView(
        color: .appAzure,
        image: Image(systemName: "phone.fill"),
        title: "Phone"
    )
}
