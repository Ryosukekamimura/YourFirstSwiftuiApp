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
            HStack(alignment: .top, spacing: 20, content: {
                Text("apple.com")
                
                Image("lemon")
                    .resizable()
                    .frame(width: 100, height: 100)
                Button(action: {
                    //TODO:
                }, label: {
                    Image("apple")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 100, height: 100)
                })
                Spacer()
            })
            Spacer()
            Text("by kamimura ryousuke")
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
