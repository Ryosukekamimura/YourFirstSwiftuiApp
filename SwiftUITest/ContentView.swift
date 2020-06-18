//
//  ContentView.swift
//  SwiftUITest
//
//  Created by 神村亮佑 on 2020/06/17.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var symbols = ["apple", "flutter", "python"]
    @State private var backgroundList = Array(repeating: Color.white, count: 9)
    
    @State private var numbers = Array(repeating: 0, count:9)
    @State private var credits = 200
    private var betAmount = 5
    
    
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle().foregroundColor(Color(red: 228/255, green: 195/255, blue:76/255))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Spacer()
                //Title
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("SwiftUI Slots")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                }.scaleEffect(2)
                Spacer()
                
                Text("Credits: \(self.credits)")
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20)
                Spacer()
                
                //Credits
                VStack{
                    HStack{
                        Spacer()
                        CardView(symbol: $symbols[numbers[0]], background: $backgroundList[0])
                        CardView(symbol: $symbols[numbers[1]], background: $backgroundList[1])
                        CardView(symbol: $symbols[numbers[2]], background: $backgroundList[2])
                        Spacer()
                        
                    }
                    HStack{
                        Spacer()
                        CardView(symbol: $symbols[numbers[3]], background: $backgroundList[3])
                        CardView(symbol: $symbols[numbers[4]], background: $backgroundList[4])
                        CardView(symbol: $symbols[numbers[5]], background: $backgroundList[5])
                        Spacer()
                        
                    }
                    HStack{
                        Spacer()
                        CardView(symbol: $symbols[numbers[6]], background: $backgroundList[6])
                        CardView(symbol: $symbols[numbers[7]], background: $backgroundList[7])
                        CardView(symbol: $symbols[numbers[8]], background: $backgroundList[8])
                        Spacer()
                        
                    }
                }
            
                Spacer()
                
                Button(action: {
                    
                   // processResults(isMax)
            
                    
                }) { Text("Spin")
                    .bold()
                    .foregroundColor(Color.white)
                    
                    .padding(.all, 10)
                    .padding([.leading, .trailing], 30)
                    .background(Color.pink)
                    .cornerRadius(20)
                    
                }
                
                Spacer()
            }
            
        }
        
        func processResults(_ isMax:Bool = false){
            //Set all backgrounds
            self.backgroundList = self.backgroundList.map{
                _ in Color.white
            }
            
            
            if isMax{
                //Spin all cards
                self.numbers = self.numbers.map{
                    _ in Int.random(in: 0...self.numbers.count-1)
                }
            }else{
                self.numbers[3] = Int.random(in: 0...self.numbers.count-1)
                self.numbers[4] = Int.random(in: 0...self.numbers.count-1)
                self.numbers[5] = Int.random(in: 0...self.numbers.count-1)
            }
            
            
            
            self.credits += 1
            
            
            
            
            
            
            //IF WIN
            
            processWin(isMax)
            
            
        }
        
        
        
        func processWin(_ isMax:Bool = false){
            
            
            var matches = 0
            if !isMax{
                //Processing for single spin
                if self.numbers[3] == self.numbers[4] && self.numbers[4] == self.numbers[5]{
                    //Won
                    matches += 1
                    // Change Color to Green
                    self.backgroundList[3] = Color.green
                    self.backgroundList[4] = Color.green
                    self.backgroundList[5] = Color.green
                    
                }
                
                
            }
            
            
            
            
            if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2]{
                
                //Won
                self.credits += self.betAmount * 10
                
                // Change Color to Green
                self.backgroundList = self.backgroundList.map{
                    _ in Color.green
                }
                
            }
            //IF LOSE
            else{
                self.credits -= self.betAmount
            }
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
