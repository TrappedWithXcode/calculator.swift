//
//  File.swift
//  someapp
//
//  Created by Marek Rybar on 07/03/2022.
//

import Foundation
struct CalcLogic{
    var number:Float;
    var strNumber:String = "0";
    var strTypedNum:String;
    
    mutating func countNumbers(typedNum:Int) -> Void{
        strTypedNum=String(typedNum);
        if(strNumber == "0" && typedNum > 0){
            
            strNumber = strTypedNum;
        }
        else if(strNumber != "0"){
            strNumber += strTypedNum;
        }
        else{
            strNumber="0"
        }
        
    }
    
    
    
}
