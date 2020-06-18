//
//  CardView.swift
//  SwiftUITest
//
//  Created by 神村亮佑 on 2020/06/18.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @Binding var symbol : String
    @Binding var background: Color
    
    var body: some View {
        
        Image(symbol).resizable()
            .aspectRatio(1, contentMode: .fit)
            .background(background.opacity(0.5))
            .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(symbol: Binding.constant("apple"), background: Binding.constant(Color.green))
    }
}
