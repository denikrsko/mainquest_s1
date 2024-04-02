//
//  QuestionsView.swift
//  mainquest_1.0
//
//  Created by Denisa Kršková on 08/01/2024.
//

import SwiftUI

struct StyleBut: ViewModifier {
    func body(content: Content) -> some View {
            content
                .padding()
                .foregroundColor(Color.black)
        //.frame with GeometryReader is aligning text on the top - no idea how to fix it
    }
}

extension View {
    func styleBut() -> some View{
        modifier(StyleBut())
    }
}

struct PersonProfileModel {
    var personType : String?
    var score : Int

}

//struct Answer {
//    var text : String // Classic and Tangy
//    var scoreInCategory : Int
//}
//struct Question {
//    var question : String
//    var answers : [Answer]
//}
//
//struct Questions {
//    var questions : [Question] // DRY
//}

struct QuestionsView: View {
    
    @State private var round = 1
    
    @State private var ketchupScore = 0
    @State private var mayonnaiseScore = 0
    @State private var garlicScore = 0
    @State private var srirachaScore = 0
    @State private var peanutScore = 0
    
    
    var body: some View {
        if round == 1 {
            first
        }
        else if round == 2 {
            second
        }
        else if round == 3 {
            third
        }
        else if round == 4 {
            fourth
        }
        else if round == 5{
            fifth
        } else {
            next
        }
       
    }

    var first : some View {
        VStack{
            Spacer()
            Text("What is your go-to type of humour?")
                .style()
            SwiftUI.GeometryReader { proxy in
                VStack{
                    HStack{
                        Button("Classic and Tangy"){ answerKetchup() }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.orange)
                        Button("Smooth and Effortless"){ answerMayonnaise() }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.mint)
                    }
                    HStack{
                        Button("Bold and Flavourful"){ answerGarlic() }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.blue)
                        Button("Hot and Spicy"){ answerSriracha() }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.purple)
                    }
                    Text("Question 1/5")
                }
            }
        }
        .padding(10)

    }
    
    var second: some View {
            VStack{
                    Spacer()
                    Text("How would you describe yourself in social situations?")
                        .style()
                    SwiftUI.GeometryReader { proxy in
                        VStack{
                            HStack{
                                Button("Bringing the heat and energy"){ answerSriracha() }
                                    .styleBut()
                                    .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                                    .background(Color.orange)
                                Button("Leaving a lasting impression"){ answerGarlic() }
                                    .styleBut()
                                    .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                                    .background(Color.mint)
                            }
                            HStack{
                                Button("Naughty and unpredictable"){ answerPeanut() }
                                    .styleBut()
                                    .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                                    .background(Color.blue)
                                Button("Cool, calm and collected"){ answerMayonnaise() }
                                    .styleBut()
                                    .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                                    .background(Color.purple)
                            }
                            Text("Question 2/5")
                        }
                    }
            }
            .padding(10)
    }
    
    var third : some View {
        VStack{
            Spacer()
            Text("Which movie genre do you enjoy the most?")
                .style()
            SwiftUI.GeometryReader { proxy in
                VStack{
                    HStack{
                        Button("Quirky and unpredictable comedies"){ answerPeanut() }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.orange)
                        Button("Thrillers and adventurous movies"){ answerSriracha()}
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.mint)
                    }
                    HStack{
                        Button("Action-packed movies with a twist"){ answerGarlic() }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.blue)
                        Button("Classic comedies"){ answerKetchup() }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.purple)
                    }
                    Text("Question 3/5")
                }
            }
        }
        .padding(10)

    }
    
    var fourth : some View {
        VStack{
            Spacer()
            Text("What is your prefferred way to spend a Saturday night?")
                .style()
            SwiftUI.GeometryReader { proxy in
                VStack{
                    HStack{
                        Button("Going to a lively social event or party"){ answerGarlic() }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.orange)
                        Button("Attending a comedy show or watching stand-up comedy"){ answerKetchup() }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.mint)
                    }
                    HStack{
                        Button("Organising a game night with friends"){ answerPeanut() }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.blue)
                        Button("Relaxing with a good book or movie night"){ answerMayonnaise() }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.purple)
                    }
                    Text("Question 4/5")
                }
            }
        }
        .padding(10)

    }
    
    var fifth : some View {
        VStack{
            Spacer()
            Text("What is your fashion style?")
                .style()
            SwiftUI.GeometryReader { proxy in
                VStack{
                    HStack{
                        Button("Edgy and attencion-grabbing, always making a statement"){ answerSriracha() }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.orange)
                        Button("Classic and well-thought through"){ answerMayonnaise(); }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.mint)
                    }
                    HStack{
                        Button("Casual with toutch of humor"){ answerKetchup()
                        }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.blue)
                        Button("Playful and unconventional, embracing quirky fashion"){ answerPeanut();  }
                            .styleBut()
                            .frame(width: proxy.size.width * 0.49, height: proxy.size.height * 0.5, alignment: .center)
                            .background(Color.purple)
                    }
                    Text("Question 5/5")
                }

            }
        }
        .padding(10)

    }
    var next : some View {
        VStack{
            Spacer()
            Text("you are")
                .font(.title2)
                VStack{
                    ProfileView(profile: prepareProfile())
                        .font(.title)
                        .bold()
                }
        }
        .padding(10)

    }
    

    func prepareProfile () -> PersonProfileModel {
        var personProfile = PersonProfileModel(personType: "", score: 0)
        personProfile.personType = "Ketchup Comedian"
        var highestScore = ketchupScore
        
        if mayonnaiseScore > highestScore {
            highestScore = mayonnaiseScore
            personProfile.personType = "Mayonnaise Maestro"
        }
        if garlicScore > highestScore {
            highestScore = garlicScore
            personProfile.personType = "Mayonnaise Maestro"
        }
        if peanutScore > highestScore {
            highestScore = peanutScore
            personProfile.personType = "Peunut Sauce Prankster"
        }
        if srirachaScore > highestScore {
            highestScore = srirachaScore
            personProfile.personType = "Sriracha Mayonnaise Spice"
        }
        
        return personProfile
    }
    
    
    
    func answerKetchup(){
        ketchupScore += 1
        round += 1
    }
    func answerMayonnaise(){
        mayonnaiseScore += 1
        round += 1
    }
    func answerGarlic(){
        garlicScore += 1
        round += 1
    }
    func answerPeanut(){
        peanutScore += 1
        round += 1
    }
    func answerSriracha(){
        srirachaScore += 1
        round += 1
    }
    
    
}


#Preview {
    QuestionsView()
}
