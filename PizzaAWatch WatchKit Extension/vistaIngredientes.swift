//
//  vistaIngredientes.swift
//  PizzaAWatch
//
//  Created by Ian Arvizu on 29/09/16.
//  Copyright © 2016 Ian ArvizuBeast9. All rights reserved.
//

import WatchKit
import Foundation


class vistaIngredientes: WKInterfaceController {

    
    var aPizza:Pizza!
    
    var tamaño:String = ""
    var queso:String = ""
    var pasta:String = ""
    var ingrediente:String=""
    var ingedientesSeleccionados:[String] = []
    var ingredientes:[String] = ["Pimiento", "Champiñones", "Cebolla",
                                 "Aceituna", "Piña","Jamon", "Peperoni",
                                 "Pavo", "Salchicha", "Anchoa", "Doble Queso"]

    var Contador:Int = 5;
    
    var itemsArray = []
    
    @IBOutlet var btnAdd: WKInterfaceButton!
    @IBOutlet var pickerIngredientes: WKInterfacePicker!
    @IBOutlet var labelIngredienteSelected: WKInterfaceLabel!
    @IBOutlet var labelContador: WKInterfaceLabel!
    @IBOutlet var btnOk: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! Pizza
        aPizza=c
        tamaño = c.tamano
        queso = c.queso
        pasta = c.pasta
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        btnOk.setEnabled(false)
        btnAdd.setEnabled(true)
        ingedientesSeleccionados=[]
        pickerIngredientes.setEnabled(true)
        loadPicker()
        Contador = 5;
         labelContador.setText(String(5))
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        
    }
    
    override func willDisappear() {
        willActivate()
        
    }
    
    @IBAction func accionPicker(value: Int) {
        let texto = ingredientes[value]
        labelIngredienteSelected.setText(texto)
        ingrediente = texto
    
    }
    
    private func loadPicker() {
        
        let itemPimiento = WKPickerItem()
        itemPimiento.title = "Pimiento"
        itemPimiento.caption = "Pimiento"
        
        let itemChampiñon = WKPickerItem()
        itemChampiñon.title = "Champiñones"
        itemChampiñon.caption = "Champiñones"
    
        
        let itemCebolla = WKPickerItem()
        itemCebolla.title = "Cebolla"
        itemCebolla.caption = "Cebolla"
        
        let itemAceituna = WKPickerItem()
        itemAceituna.title = "Aceituna"
        itemAceituna.caption = "Aceituna"
        
        let itemPiña = WKPickerItem()
        itemPiña.title = "Piña"
        itemPiña.caption = "Piña"
        
        let itemJamon = WKPickerItem()
        itemJamon.title = "Jamon"
        itemJamon.caption = "Jamon"
        
        let itemPeperoni = WKPickerItem()
        itemPeperoni.title = "Peperoni"
        itemPeperoni.caption = "Peperoni"
        
        let itemPavo = WKPickerItem()
        itemPavo.title = "Pavo"
        itemPavo.caption = "Pavo"
        
        let itemSalchicha = WKPickerItem()
        itemSalchicha.title = "Salchicha"
        itemSalchicha.caption = "Salchicha"
        
        let itemAnchoa = WKPickerItem()
        itemAnchoa.title = "Anchoa"
        itemAnchoa.caption = "Anchoa"
        
        let itemDobleQueso = WKPickerItem()
        itemDobleQueso.title = "DobleQueso"
        itemDobleQueso.caption = "DobleQueso"
        
        itemsArray = [itemPimiento, itemChampiñon,
                          itemCebolla, itemAceituna,
                          itemPiña, itemJamon, itemPeperoni,
                          itemPavo, itemSalchicha, itemAnchoa,
                          itemDobleQueso]
        
        pickerIngredientes.setItems((itemsArray as! [WKPickerItem]))
        accionPicker(0)
        
    }
    
    
    @IBAction func btnAddAction() {
        if Contador  <= 5 {
            btnOk.setEnabled(true)
            ingedientesSeleccionados.append(ingrediente)
            Contador -= 1
            labelContador.setText(String(Contador))
        }
        if Contador == 0{
            btnAdd.setEnabled(false)
            
            pickerIngredientes.setEnabled(false)
        }
    }
    
    
    @IBAction func btnOkAction() {
        aPizza.ingredientes = ingedientesSeleccionados
        aPizza.tamano = tamaño
        aPizza.queso = queso
        aPizza.pasta = pasta
        pushControllerWithName("identificadorConfirmacion", context: aPizza)
    }
    
    
}
