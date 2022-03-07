//
//  ContentView.swift
//  someapp
//
//  Created by Marek Rybar on 07/03/2022.
//

import SwiftUI
var screenWidth:CGFloat=UIScreen.main.coordinateSpace.bounds.width
var value:Float = 0
var prevValue:Float = value

struct ContentView: View {
    @State var a = CalcLogic()
    fileprivate func digitButton(value:String) -> some View {
        return Button(action: {a.addDigits(typedDigit: value)}){
            Text(value)
        }
        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
    }
    
    fileprivate func operatorButton(sign:String) -> some View {
        return Button(action: {a.getOperation(sign: sign)}){
            Text(sign)
        }
        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
    }
    fileprivate func equalsButton(sign:String) -> some View {
        return Button(action: {a.result()}){
            Text(sign).padding(.horizontal, 88)
        }
        .padding(/*@START_MENU_TOKEN@*/.horizontal, 88.0/*@END_MENU_TOKEN@*/).padding(.vertical, 22.0)
    }
    
    var body: some View {
        
        ZStack{
            VStack{
                Spacer()
                HStack{
                    Text(String(a.strNumber))
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        .multilineTextAlignment(.trailing)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: screenWidth - 64)
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.blue, lineWidth: 2))
                        
                    
                }
                
                Spacer()
                VStack{
                    HStack{
                        digitButton(value: "7")
                        digitButton(value: "8")
                        digitButton(value: "9")
                        operatorButton(sign: "C")
                        
                        
                        
                    }
                    
                    HStack{
                        digitButton(value: "4")
                        digitButton(value: "5")
                        digitButton(value: "6")
                        operatorButton(sign: "X")
                        
                    }
                    
                    HStack{
                        digitButton(value: "1")
                        digitButton(value: "2")
                        digitButton(value: "3")
                        operatorButton(sign: "/")
                        
                    }
                    HStack{
                        digitButton(value: "0")
                        digitButton(value: ".")
                        operatorButton(sign: "+")
                        operatorButton(sign: "-")
                    }
                    equalsButton(sign: "=")
                    Spacer().frame(height: 96.0)
                }
        }
       
        

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
            
    }
}
