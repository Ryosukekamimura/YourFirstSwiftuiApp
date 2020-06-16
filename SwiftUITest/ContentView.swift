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
            Spacer()
            HStack{
                Spacer()
                Image("apple")
                    .resizable()
                    .frame(width:100 , height: 100)
                Spacer()
                Image("apple")
                    .resizable()
                    .frame(width:100 , height: 100)
                Spacer()
                Image("apple")
                    .resizable()
                    .frame(width:100 , height: 100)
                Spacer()
            }
            Spacer()
            HStack{
                   Spacer()
                Image("apple")
                    .resizable()
                    .frame(width:100 , height: 100)
                Spacer()
                Image("apple")
                    .resizable()
                    .frame(width:100 , height: 100)
                Spacer()
                Image("apple")
                    .resizable()
                    .frame(width:100 , height: 100)
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
                Image("apple")
                    .resizable()
                    .frame(width:100 , height: 100)
                Spacer()
                Image("apple")
                    .resizable()
                    .frame(width:100 , height: 100)
                Spacer()
                Image("apple")
                    .resizable()
                    .frame(width:100 , height: 100)
                Spacer()
            }
            Spacer()
        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
