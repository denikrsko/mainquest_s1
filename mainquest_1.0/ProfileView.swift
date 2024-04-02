//
//  ProfileView.swift
//  mainquest_1.0
//
//  Created by Denisa Kršková on 16/01/2024.
//

import SwiftUI

struct StyleCaption: ViewModifier {
    func body(content: Content) -> some View {
            content
            .multilineTextAlignment(.center)
            .font(.callout)
            .foregroundColor(.black)
    }
}

extension View {
    func styleCaption() -> some View{
        modifier(StyleCaption())
    }
}

struct StyleButton: ViewModifier {
    func body(content: Content) -> some View {
            content
            .font(.title2)
            .bold()
            .foregroundColor(.white)
            .padding()
            .background(Color(red: 194 / 255, green: 59 / 255, blue: 39 / 255))
            .cornerRadius(20)
    }
}

extension View {
    func styleButton() -> some View{
        modifier(StyleButton())
    }
}

struct ProfileView: View {
    var profile : PersonProfileModel
    
    var body: some View {
        VStack {
            Text (profile.personType ?? "empty")
            if profile.personType == "Ketchup Comedian" {
                ketchup
            } else if profile.personType == "Mayonnaise Maestro" {
                mayonnaise
            } else if profile.personType == "Mayonnaise Maestro" {
                garlic
            } else if profile.personType == "Peunut Sauce Prankster" {
                peunut
            } else if profile.personType == "Sriracha Mayonnaise Spice" {
                sriracha
            }
        }
    }
    
    var ketchup: some View {
            VStack{
                Image("ketchup")
                    .resizable()
                    .frame(width: 350, height: 350)
                Text("Always ready for a saucy joke, this person's humour is as classic as the condiment itself. They're the ketchup on the comedy hotdog of life, bringing a tangy twist to every punchline.")
                    .styleCaption()
                Spacer()
                NavigationLink("click me for free present", destination: MenuView())
                    .styleButton()
                Spacer()
            }
            .padding()
    }
    var mayonnaise: some View {
            VStack{
                Image("mayonnaise")
                    .resizable()
                    .frame(width: 350, height: 350)
                Text("With a personality as smooth as a well-made mayo, this individual glides through life effortlessly. They're the cool and creamy operator who turns mundane moments into a deliciously entertaining experience.")
                    .styleCaption()
                Spacer()
                NavigationLink("click me for free present", destination: MenuView())
                    .styleButton()
                Spacer()
            }
            .padding()
    }
    var garlic: some View {
            VStack{
                Image("garlic")
                    .resizable()
                    .frame(width: 350, height: 350)
                Text("Bold and flavourful, this person leaves a lasting impression. Their personality is a mix of spice and charm, making them the garlic mayo of the social scene—unforgettable and impossible to ignore.")
                    .styleCaption()
                Spacer()
                NavigationLink("click me for free present", destination: MenuView())
                    .styleButton()
                Spacer()
            }
            .padding()
    }
    var peunut: some View {
            VStack{
                Image("peunut")
                    .resizable()
                    .frame(width: 350, height: 350)
                Text("Life is a playground for this mischievous character. With a nutty sense of humour, they're the peanut sauce that adds an unexpected twist to any situation, leaving everyone laughing in delightful confusion.")
                    .styleCaption()
                Spacer()
                NavigationLink("click me for free present", destination: MenuView())
                    .styleButton()
                Spacer()
            }
            .padding()
    }
    var sriracha: some View {
            VStack{
                Image("sriracha")
                    .resizable()
                    .frame(width: 350, height: 350)
                Text("Hot, spicy, and always bringing the heat, this personality is like the sriracha mayo that kicks things up a notch. Whether in conversation or adventure, they leave a fiery impression that lingers long after they're gone.")
                    .styleCaption()
                Spacer()
                NavigationLink("click me for free present", destination: MenuView())
                    .styleButton()
                Spacer()
            }
            .padding()
    }
    
    
    
    
}

