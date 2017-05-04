//
//  vistaPasta.swift
//  PizzaAWatch
//
//  Created by Ian Arvizu on 29/09/16.
//  Copyright © 2016 Ian ArvizuBeast9. All rights reserved.
//

import WatchKit
import Foundation


class vistaPasta: WKInterfaceController {

    @IBOutlet var labelTamano: WKInterfaceLabel!
    @IBOutlet var labelQueso: WKInterfaceLabel!
    
    var aPizza:Pizza!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! Pizza
        aPizza=c
        labelTamano.setText(String(c.tamano))
        labelQueso.setText(String(c.queso))
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func btnAccionDelgada() {
        aPizza.pasta = "Delgada"
        pushControllerWithName("identificadorIngredientes", context: aPizza)

    }
    
    @IBAction func btnAccionCrujiente() {
        aPizza.pasta = "Crujiente"
        pushControllerWithName("identificadorIngredientes", context: aPizza)
    }
    
    @IBAction func btnAccionGruesa() {
        aPizza.pasta = "Gruesa"
        pushControllerWithName("identificadorIngredientes", context: aPizza)
    }
    
    
    
}
