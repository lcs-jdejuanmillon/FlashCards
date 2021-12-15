//
//  ContentView.swift
//  FlashCards
//
//  Created by Patrick Boren on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    // MARK: Stored properties
    // Store the card to work with
    // It is randomly selected from the lsit of cards
    @State var currentCard = listOfCards.randomElement()!
    @State var previousCard = listOfCards.randomElement()!
    //This controls whether the answer is visible
    @State var isAnswerShowing = false
    // MARK: Computed properties
    var body: some View {
        ScrollView {
            //show question
            HStack{
                Spacer()
                Text(currentCard.question)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                Spacer()
            }
            //Check answer
            Button(action: {
                
                //reveal animation
                withAnimation {
                    isAnswerShowing = true
                }
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            Text(currentCard.answer)
                .opacity(isAnswerShowing ? 1.0 : 0.0)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Button(action: {
                previousCard = currentCard
                while previousCard == currentCard {
                    currentCard = listOfCards.randomElement()!
                }
                withAnimation{
                    isAnswerShowing = false
                }
            }, label: {
                Text("Another")
            })
                .opacity(isAnswerShowing ? 1.0 : 0.0)
                .buttonStyle(.bordered)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
