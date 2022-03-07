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
    var body: some View {
        
        ZStack{
            VStack{
                Spacer()
                HStack{
                    Text(String(a.strNumber))
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.trailing)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: screenWidth - 64).background(Color.gray).cornerRadius(16)
                    
                }
                Spacer()
                VStack{
                    HStack{
                        Button(action: {
                            a.addDigits(typedDigit: "7");
                            }, label: {
                            Text("7")
                        })
                        .padding(.all, 22.0)
                        Button(action: {a.addDigits(typedDigit: "8")}){
                            Text("8")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.addDigits(typedDigit: "9")}){
                            Text("9")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.getOperation(sign: "C")}){
                            Text("C")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                       

                    }
                    
                    HStack{
                        Button(action: {a.addDigits(typedDigit: "4")}){
                            Text("4")
                        }
                        .padding(.all, 22.0)
                        Button(action: {a.addDigits(typedDigit: "5")}){
                            Text("5")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.addDigits(typedDigit: "6")}){
                            Text("6")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.getOperation(sign: "X")}){
                            Text("X")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                       
                    }
                    
                    HStack{
                        Button(action: {a.addDigits(typedDigit: "1")}){
                            Text("1")
                        }
                        .padding(.all, 22.0)
                        Button(action: {a.addDigits(typedDigit: "2")}){
                            Text("2")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.addDigits(typedDigit: "3")}){
                            Text("3")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.getOperation(sign: "/")}){
                            Text("/")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                       
                    }
                    Button(action: {a.addDigits(typedDigit: "0")}){
                        Text("0")
                    }
                    HStack{
                        Button(action: {a.addDigits(typedDigit: ".")}){
                            Text(".")
                        }
                        .padding(.all, 22.0)
                        Button(action: {a.getOperation(sign: "-")}){
                            Text("-")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.getOperation(sign: "+")}){
                            Text("+")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.result()}){
                            Text("=")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                       
                    }
                    
                }
                
                Spacer()
                    .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/11/*@END_MENU_TOKEN@*/)
            }
        }
       
        


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
