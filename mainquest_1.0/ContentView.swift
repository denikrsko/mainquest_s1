//
//  ContentView.swift
//  mainquest_1.0
//
//  Created by Denisa Kršková on 08/01/2024.
//

import SwiftUI

struct StyleMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
    }
}

extension View {
    func style() -> some View{
        modifier(StyleMod())
    }
}

struct ContentView: View {
    @State private var showingQuestionsView = false
    
    var body: some View {
        NavigationStack{
            NavigationLink(destination: QuestionsView()) {
                VStack {
                    Spacer()
                    Image("main")
                        .resizable()
                        .frame(width: 350, height: 350)
                    Spacer()
                    Text("TOUCH ME")
                        .style()
                        .foregroundStyle(Color.green)
                    Text("to find your")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color.black)
                    Text("ZODIAC SAUCE")
                        .style()
                        .foregroundStyle(Color.red)
                    Spacer()
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
