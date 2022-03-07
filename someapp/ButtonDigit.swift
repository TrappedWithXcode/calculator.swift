//
//  ButtonDigit.swift
//  someapp
//
//  Created by Marek Rybar on 07/03/2022.
//

import SwiftUI

struct ButtonDigit: View {
    var value:String;
    var body: some View {
        
        Button(action:{
            a.addDigits(typedDigit: value)
        },label: {
                Text(value)
                    .font(.headline)
                    .fontWeight(.heavy)
        })
        .padding(.all, 22.0)

    }
}

struct ButtonDigit_Previews: PreviewProvider {
    static var previews: some View {
        ButtonDigit(value: "7")
    }
}
