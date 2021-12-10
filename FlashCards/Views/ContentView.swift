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
    
    //This controls whether the answer is visible
    @State var isAnswerShowing = false
    // MARK: Computed properties
    var body: some View {
        ScrollView {
            //show question
            Text(currentCard.question)
        
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //Check answer
            Button(action: {
                isAnswerShowing = true
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            Text(currentCard.answer)
                .opacity(isAnswerShowing ? 1.0 : 0.0)
    
            .font(.largeTitle)
            .multilineTextAlignment(.center)
        
        //Check answer
        Button(action: {
            currentCard = listOfCards.randomElement()!
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
