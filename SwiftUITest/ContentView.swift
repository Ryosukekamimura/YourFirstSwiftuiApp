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
        
        Text("Modify ME!")
            .font(.headline)
            .fontWeight(.heavy)
            .foregroundColor(Color.pink)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 23.0)

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
