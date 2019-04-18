//
//  ClassePrivada.swift
//  Pods
//
//  Created by HelioJunior on 18/04/19.
//

import Foundation


class ClassePrivada {
    
    
    public var myText : String = "HelioTeclologia"
    
    
    public func getText(number: Int) -> String {
        let text = "Texto vindo de uma classe escondida. # \(arc4random()) #"
        return "==> myText: \(myText) | param: \(number) | getText: \(text)"
    }
    
}
