//
//  vistaConfirmacion.swift
//  PizzaAWatch
//
//  Created by Ian Arvizu on 01/10/16.
//  Copyright © 2016 Ian ArvizuBeast9. All rights reserved.
//

import WatchKit
import Foundation


class vistaConfirmacion: WKInterfaceController {
    
    var aPizza:Pizza!

    @IBOutlet var labelTamaño: WKInterfaceLabel!
    @IBOutlet var labelPasta: WKInterfaceLabel!
    @IBOutlet var labelQueso: WKInterfaceLabel!
    
    @IBOutlet var labelIngredientes0: WKInterfaceLabel!
    @IBOutlet var labelIngredientes1: WKInterfaceLabel!
    @IBOutlet var labelIngredientes2: WKInterfaceLabel!
    @IBOutlet var labelIngredientes3: WKInterfaceLabel!
    @IBOutlet var labelIngredientes4: WKInterfaceLabel!
    
    var Ingedientes:[String] = []
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Pizza
        aPizza=c

        labelTamaño.setText(String(c.tamano))
        labelQueso.setText(String(c.queso))
        labelPasta.setText(String(c.pasta))
        Ingedientes=c.ingredientes
        
        if (Ingedientes.count == 1)
        {
            labelIngredientes0.setText("🔵 "+String(Ingedientes[0]))
        }
        
        else if (Ingedientes.count == 2)
        {
            labelIngredientes0.setText("🔵 "+String(Ingedientes[0]))
            labelIngredientes1.setText("🔵 "+String(Ingedientes[1]))
        }
        
        else if (Ingedientes.count == 3)
        {
            labelIngredientes0.setText("🔵 "+String(Ingedientes[0]))
            labelIngredientes1.setText("🔵 "+String(Ingedientes[1]))
            labelIngredientes2.setText("🔵 "+String(Ingedientes[2]))
        }
        
        else if (Ingedientes.count == 4)
        {
            labelIngredientes0.setText("🔵 "+String(Ingedientes[0]))
            labelIngredientes1.setText("🔵 "+String(Ingedientes[1]))
            labelIngredientes2.setText("🔵 "+String(Ingedientes[2]))
            labelIngredientes3.setText("🔵 "+String(Ingedientes[3]))
        }
        
        else if (Ingedientes.count == 5)
        {
            labelIngredientes0.setText("🔵 "+String(Ingedientes[0]))
            labelIngredientes1.setText("🔵 "+String(Ingedientes[1]))
            labelIngredientes2.setText("🔵 "+String(Ingedientes[2]))
            labelIngredientes3.setText("🔵 "+String(Ingedientes[3]))
            labelIngredientes4.setText("🔵 "+String(Ingedientes[4]))
        }
        
            
            


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
    
    override func willDisappear() {
        Ingedientes = []
    }
    
   
    @IBAction func btnConfirmarAction() {
        let action = WKAlertAction(title: "Cancel",
                                   style: WKAlertActionStyle.Default,
                                   handler: { () -> Void in}
            
        )
        let cancel = WKAlertAction(title: "OK",
                                   style: WKAlertActionStyle.Cancel,
                                   handler: { self.pushControllerWithName("identificadorPrincipal", context:self.aPizza) }
        )
        self.presentAlertControllerWithTitle("Confirmación!",
                                             message: "Esta seguro de su pedido?",
                                             preferredStyle: WKAlertControllerStyle.SideBySideButtonsAlert,
                                             actions: [cancel, action])
    }
    

}
