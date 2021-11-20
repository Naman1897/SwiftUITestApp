//
//  ContentView.swift
//  SwiftUITestApp
//
//  Created by Naman Singh on 28/10/21.
//

import SwiftUI

struct ContentView: View {
    
   @State private var player1Card = "card5"
   @State private var player2Card = "card3"
    
   @State private var player1Score = 0
   @State private var player2Score = 0
    
    var body: some View {
        
        Button("Click Me", action: {
            print("Hello World")
        })
        
        ZStack {
            
            Image("background")
            
            VStack {
               Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(player1Card)
                    Spacer()
                    Image(player2Card)
                    Spacer()
                    }
                Spacer()
                Button(action: {
                    
                    //Generate the random number
                    let player1Random = Int.random(in: 2...14)
                    let player2Random = Int.random(in: 2...14)
                    
                    // Update the cards
                    player1Card = "card" + String(player1Random)
                    player2Card = "card" + String(player2Random)
                    
                    
                    // Update the score
                    if player1Random > player2Random {
                        player1Score += 1
                    } else if player2Random > player1Random {
                        player2Score += 1
                    }
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player 1")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        Text(String(player1Score))
                            .font(.callout)
                    }
                    Spacer()
                    VStack {
                        Text("Player 2")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        Text(String(player2Score))
                            .font(.callout)
                    }
                  Spacer()
                }
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
