//
//  ViewController.swift
//  SalesTax
//
//  Created by German Andrejew on 06/07/2020.
//  Copyright © 2020 German. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTxt: UITextField!
    
    
    @IBOutlet weak var salesTaxTXT: UITextField!
    
    
    @IBOutlet weak var totalPriceLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = ""
    }

    @IBAction func calculateTotalPrice(_ sender: Any) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTaxTXT.text!)!
        
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        totalPriceLbl.text = "$\(totalPrice)"
        
    }
    
}

