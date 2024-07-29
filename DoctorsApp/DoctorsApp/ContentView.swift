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
                    HeaderView()
                    SearchAndActionsView(searchText: $searchText)
                }
                TopDoctorSection()
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.appBackground)
    }
}

#Preview {
    ContentView()
}

struct HeaderView: View {
    var body: some View {
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
                    .headerStyle(size: 16)
                Text("Find your specialist")
                    .headerStyle(size: 32)
            }
            .padding(.horizontal, 30)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct SearchAndActionsView: View {
    
    @Binding var searchText: String
    
    var body: some View {
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
            ActionCardsView()
        }
    }
}

struct ActionCardsView: View {
    var body: some View {
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
    }
}

struct TopDoctorSection: View {
    var body: some View {
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
            ScrollView {
                ForEach(0..<6) { _ in
                    DoctorView()
                }
            }
        }
        .padding(.horizontal, 30)
    }
}
