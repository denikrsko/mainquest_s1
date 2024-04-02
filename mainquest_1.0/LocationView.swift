//
//  LocationView.swift
//  mainquest_1.0
//
//  Created by Denisa Kršková on 16/01/2024.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
            NavigationLink(destination: ContentView()) {
                VStack{
                    Spacer()
                    Text("nhl stenden")
                        .font(.title2)
                        .foregroundStyle(.black)
                    Text("FOOD TRUCK")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.red)
                    Spacer()
                    Image("location")
                        .resizable()
                        .frame(width: 350, height: 350)
                    Spacer()
                    Text("")
                    Spacer()
                }
            }
    }
}

#Preview {
    LocationView()
}
