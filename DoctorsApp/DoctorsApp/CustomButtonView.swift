//
//  CustomButtonView.swift
//  DoctorsApp
//
//  Created by Matvei Khlestov on 29.07.2024.
//

import SwiftUI

struct CustomButtonView: View {
    @Binding var searchText: String
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 47)
                .foregroundStyle(Color.appAzure)
            Image(.send)
            Button(action: {
                print("Search button tapped with text: \(searchText)")
            }, label: {
                Text("Button")
                    .tint(.clear)
            })
        }
    }
}

#Preview {
    CustomButtonView(searchText: .constant("2"))
}
