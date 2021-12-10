//
//  ContentView.swift
//  FlashCards
//
//  Created by Patrick Boren on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            //show question
            Text("What is the \"powerhouse\" of a cell?")
        
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            //Check answer
            Button(action: {
                
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
        
        Text("Mitochondria?")
    
            .font(.largeTitle)
            .multilineTextAlignment(.center)
        
        //Check answer
        Button(action: {
            
        }, label: {
            Text("Another")
        })
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
