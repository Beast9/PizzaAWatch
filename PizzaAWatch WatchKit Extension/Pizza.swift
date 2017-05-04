//
//  Pizza.swift
//  PizzaAWatch
//
//  Created by Ian Arvizu on 29/09/16.
//  Copyright © 2016 Ian ArvizuBeast9. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
    
    var tamano: String = ""
    var pasta: String = ""
    var queso: String = ""
    var ingredientes:[String] = []
    
    override init() {
        
    }

    init(p:Pizza) {
        tamano = p.tamano
        pasta = p.pasta
        queso = p.pasta
        ingredientes = p.ingredientes
    }
}
