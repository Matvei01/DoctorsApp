//
//  ContentView.swift
//  DoctorsApp
//
//  Created by Matvei Khlestov on 28.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack(spacing: 40) {
                VStack {
                    VStack(spacing: 40) {
                        HStack {
                            Image(.burger)
                            Spacer()
                            Image(.man)
                                .resizable()
                                .frame(width: 55, height: 55)
                                .clipShape(Circle())
                        }
                        .padding(.horizontal, 30)
                        VStack(alignment: .leading, spacing: 14) {
                            Text("Hello User")
                                .font(.system(size: 16, weight: .bold))
                            Text("Find your specialist")
                                .font(.system(size: 32, weight: .bold))
                        }
                        .padding(.horizontal, 30)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    VStack(spacing: 48) {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .padding(.leading, 19)
                            TextField("Search", text: $searchText)
                            CustomButtonView(searchText: $searchText)
                                .padding(.trailing, 6)
                            
                        }
                        .frame(height: 60)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 49))
                        .padding(.horizontal, 30)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        HStack(spacing: 17) {
                            ActionCardView(
                                color: .appBlue,
                                image: Image(systemName: "mappin.and.ellipse"),
                                title: "Place"
                            )
                            ActionCardView(
                                color: .appAzure,
                                image: Image(systemName: "phone.fill"),
                                title: "Phone"
                            )
                            ActionCardView(
                                color: .appOrange,
                                image: Image(systemName: "person.fill"),
                                title: "User"
                            )
                        }
                        .padding(.horizontal, 30)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                VStack {
                    HStack {
                        Text("Top Doctor")
                            .font(.system(size: 25, weight: .bold))
                        Spacer()
                        Button(action: {}, label: {
                            Text("see all")
                                .foregroundStyle(.appLightAzure)
                        })
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    ScrollView {
                        DoctorView()
                        DoctorView()
                        DoctorView()
                        DoctorView()
                        DoctorView()
                        DoctorView()
                    }
                }
                .padding(.horizontal, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.appBackground)
    }
}

#Preview {
    ContentView()
}
