//
//  main.swift
//  RegistroAsistentes
//
//  Created by Developer Cymetria on 14/03/15.
//  Copyright (c) 2015 Cymetria. All rights reserved.
//

import Foundation

func input()->String{
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let rawString = NSString(data: inputData, encoding: NSUTF8StringEncoding)
    if let string = rawString{
        return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
    }
    else{
        return "Texto Invalido"
        
    }
}

var response:String
var people:[Person] = []

do{
    var newPerson = Person()
    newPerson.enterInfo()
    people.append(newPerson)
    println("Desea Ingresar otra persona?? (y/n)")
    response = input()
}while(response=="y")

for user in people{
    user.printInfo()
}
