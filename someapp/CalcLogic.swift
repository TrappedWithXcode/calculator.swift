//
//  File.swift
//  someapp
//
//  Created by Marek Rybar on 07/03/2022.
//

import Foundation
struct CalcLogic{
    private var number:Float = 0;
    var strNumber:String = "0";
    private var strPrevNumber:String="0";
    var strtypedDigit:String="";
    var operation:String = "";
    
   mutating func addDigits(typedDigit:String) -> Void{
            if(strNumber == "0" && ((typedDigit != "." ) || (typedDigit != "0" ))){
            
            strNumber = typedDigit;
        }
        else if(strNumber != "0"){
            strNumber += typedDigit;
        }
        else if (strNumber.contains(".")){
            strNumber += "";
            
        }
        else{
            strNumber="0"
        }
        
    }
   mutating func getOperation(sign:String){
        strPrevNumber=strNumber;
        strNumber="0";
        operation = sign;
        
    }
   mutating func result(){
        switch operation {
            //logic for adding two numbers
        case "+": number = Float(strNumber)! + Float(strPrevNumber)!;
            strNumber = String(number);
            operation = "";
            //logic for substraction
        case "-": number = Float(strPrevNumber)! - Float(strNumber)!;
            strNumber = String(number);
            operation = ""
            //logic for division
        case "/": number = Float(strPrevNumber)! / Float(strNumber)!;
            strNumber = String(number);
            operation = ""
            //logic for multiplication
        case "X": number =  Float(strNumber)! * Float(strPrevNumber)!;
            strNumber = String(number);
            operation = "";
           //logic for clearing calculation
        case "C": strPrevNumber = "0";
            strNumber = "0";
            operation = "";
                    
            
        default:
            strNumber = strPrevNumber;
        }
        
            
        
    }
    
    
    
}
