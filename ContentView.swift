//
//  ContentView.swift
//  WCG
//
//  Created by Ased Adus on 9/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String = "card3"
    @State var cpuCard: String = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
    
                
                Button{
                    deal()
                }label: {
                    Image("button")
                }
                
                Spacer()
                
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .foregroundColor(Color.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .foregroundColor(Color.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    VStack{
                        Text("CPI")
                            .foregroundColor(Color.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .foregroundColor(Color.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                }
                Spacer()
            }
            
        }
        
    }
    
    func deal(){
        // Randomize the players card
        var playerCardValue = Int.random(in: 2 ... 14 )
        var cpuCardValue = Int.random(in: 2 ... 14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the Cpus card
        cpuCard = "card" + String(cpuCardValue)
        
        // update score for player
        if playerCardValue > cpuCardValue{
            playerScore += 1
        }else if playerCardValue < cpuCardValue{
            cpuScore += 1
        }
            
        
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
