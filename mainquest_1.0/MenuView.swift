//
//  MenuView.swift
//  mainquest_1.0
//
//  Created by Denisa Kršková on 16/01/2024.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
            ZStack{
                Color(red: 235 / 255, green: 181 / 255, blue: 102 / 255)
                    .ignoresSafeArea()
                VStack{
                    Text("Get your")
                        .foregroundColor(.white)
                        .font(.title3)
                    Text("FREE SAUCE")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                    Text("with the best fries on campus at")
                        .foregroundColor(.white)
                        .font(.title3)
                    Text("FOOD TRUCK")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                    Image("menu")
                        .resizable()
                        .frame(width: 340, height: 500)
                    NavigationLink("Where to get your free sauce?", destination: LocationView())
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(red: 194 / 255, green: 59 / 255, blue: 39 / 255))
                    .cornerRadius(20)
                    Spacer()
                }
            }
    }
}

#Preview {
    MenuView()
}
