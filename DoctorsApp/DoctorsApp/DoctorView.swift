//
//  DoctorView.swift
//  DoctorsApp
//
//  Created by Matvei Khlestov on 29.07.2024.
//

import SwiftUI

struct DoctorView: View {
    var body: some View {
        HStack {
            HStack(spacing: 21) {
                Image(.doctor)
                    .resizable()
                    .frame(width: 82, height: 82)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.bottom, 25)
                VStack(alignment: .leading, spacing: 12) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("User Name")
                            .font(.system(size: 20, weight: .bold))
                        Text("Lorem ipsum dolor sit amet")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundStyle(.appGray)
                    }
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Image(systemName: "clock")
                                .foregroundStyle(.appLightAzure)
                            Text("10.40 am - 2.40 pm")
                                .font(.system(size: 14, weight: .medium))
                                .foregroundStyle(.appGray)
                        }
                        HStack {
                            Text("$10.50")
                                .font(.system(size: 14, weight: .medium))
                                .foregroundStyle(.appGray)
                            Spacer()
                            Button(action: {}, label: {
                                Text("Appointment")
                                    .font(.system(size: 14, weight: .medium))
                                    .tint(.white)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 5)
                            })
                            .background(Color.appLightAzure)
                            .clipShape(RoundedRectangle(cornerRadius: 17))
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 16)
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    DoctorView()
}
