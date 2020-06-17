//
//  ContentView.swift
//  SwiftUITest
//
//  Created by 神村亮佑 on 2020/06/17.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Image("pinkbuilding")
                .resizable()
                .cornerRadius(30)
                .padding()
                .shadow(radius: 10)
            
            Text("pink building is totally amazing.")
                .fontWeight(.heavy)
                .foregroundColor(Color.pink)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .shadow(color: .black, radius: 0.1, x: 2, y: 1)
            
        }

        
        
        
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
