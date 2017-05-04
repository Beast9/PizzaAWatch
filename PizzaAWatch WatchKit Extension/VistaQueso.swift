//
//  VistaQueso.swift
//  PizzaAWatch
//
//  Created by Ian Arvizu on 29/09/16.
//  Copyright © 2016 Ian ArvizuBeast9. All rights reserved.
//

import WatchKit
import Foundation


class VistaQueso: WKInterfaceController {

    @IBOutlet var labelTamano: WKInterfaceLabel!
    
    var aPizza:Pizza!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Pizza
        aPizza=c
        labelTamano.setText(String(c.tamano))
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
    
    
    @IBAction func btnAccionMozzarella() {
        aPizza.queso = "Mozzarella"
        pushControllerWithName("identificadorPasta", context: aPizza)
    }
    
    @IBAction func btnAccionCheddar() {
        aPizza.queso = "Cheddar"
        pushControllerWithName("identificadorPasta", context: aPizza)
    }
    
    @IBAction func btnAccionParmesano() {
        aPizza.queso = "Parmesano"
        pushControllerWithName("identificadorPasta", context: aPizza)
    }
    
    @IBAction func btnAccionSinQueso() {
        aPizza.queso = "Sin Queso"
        pushControllerWithName("identificadorPasta", context: aPizza)
    }

}
