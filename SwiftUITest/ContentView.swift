//
//  ContentView.swift
//  SwiftUITest
//
//  Created by 神村亮佑 on 2020/06/17.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private var symbols = ["apple", "flutter", "python"]
    
    @State private var numbers = [0, 0, 0]
    @State private var credits = 1000
    
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
                HStack{
                    Spacer()
                    
                    Image("\(self.symbols[numbers[0]])").resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image("\(self.symbols[numbers[1]])").resizable()
                        
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    Image("\(self.symbols[numbers[2]])").resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    Spacer()
                    
                }
                Spacer()
                
                Button(action: {
                    self.credits += 1
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
        
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
