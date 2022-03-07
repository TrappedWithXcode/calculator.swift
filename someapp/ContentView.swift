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
    @State var a = CalcLogic(number: value, strNumber: "", strTypedNum: "")
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
                            a.countNumbers(typedNum: 7);
                            }, label: {
                            Text("7")
                        })
                        .padding(.all, 22.0)
                        Button(action: {a.countNumbers(typedNum: 8)}){
                            Text("8")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.countNumbers(typedNum: 9)}){
                            Text("9")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.countNumbers(typedNum: 9)}){
                            Text("C")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                       

                    }
                    
                    HStack{
                        Button(action: {a.countNumbers(typedNum: 4)}){
                            Text("4")
                        }
                        .padding(.all, 22.0)
                        Button(action: {a.countNumbers(typedNum: 5)}){
                            Text("5")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.countNumbers(typedNum: 6)}){
                            Text("6")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.countNumbers(typedNum: 9)}){
                            Text("X")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                       
                    }
                    
                    HStack{
                        Button(action: {a.countNumbers(typedNum: 1)}){
                            Text("1")
                        }
                        .padding(.all, 22.0)
                        Button(action: {a.countNumbers(typedNum: 2)}){
                            Text("2")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.countNumbers(typedNum: 3)}){
                            Text("3")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.countNumbers(typedNum: 9)}){
                            Text("/")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                       
                    }
                    HStack{
                        Button(action: {a.countNumbers(typedNum: 0)}){
                            Text("0")
                        }
                        .padding(.all, 22.0)
                        Button(action: {a.countNumbers(typedNum: 9)}){
                            Text("-")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.countNumbers(typedNum: 9)}){
                            Text("+")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                        Button(action: {a.countNumbers(typedNum: 9)}){
                            Text("=")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 22.0/*@END_MENU_TOKEN@*/)
                       
                    }
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: nil)
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
