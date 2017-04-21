//
//  IMCModel.swift
//  NAC1-IMC
//
//  Created by Rickardo on 4/21/17.
//  Copyright © 2017 Ricardo Santos Filho. All rights reserved.
//

import Foundation

class IMCComputation{
    var peso:Double
    var altura:Double
    
    init(peso:Double, altura:Double){
        self.altura = altura
        self.peso = peso
    }
    func imc() -> Double{
        return peso / (altura * altura)
    }
}
