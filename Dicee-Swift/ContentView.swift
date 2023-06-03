//
//  ContentView.swift
//  Dicee-Swift
//
//  Created by Emre Durmuş on 26.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var LeftDiceNumber = 1
    @State var RightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: LeftDiceNumber)
                    DiceView(n: RightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action:{
                    self.LeftDiceNumber = Int.random(in: 1...6)
                    self.RightDiceNumber = Int.random(in: 1...6)
                }){
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
            
        }
    }
struct DiceView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
        }
    }


    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}

