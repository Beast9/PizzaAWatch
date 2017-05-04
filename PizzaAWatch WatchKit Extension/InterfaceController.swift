//
//  InterfaceController.swift
//  PizzaAWatch WatchKit Extension
//
//  Created by Ian Arvizu on 29/09/16.
//  Copyright © 2016 Ian ArvizuBeast9. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var bottonPrincipal: WKInterfaceButton!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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

}
