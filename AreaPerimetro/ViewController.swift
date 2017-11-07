//
//  ViewController.swift
//  AreaPerimetro
//
//  Created by Nicola Solazzo on 07/11/17.
//  Copyright © 2017 Nicola Solazzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var widthField: UITextField!
    
    @IBOutlet weak var heightField: UITextField!
    
    @IBOutlet weak var resultField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func areaButton(_ sender: Any) {
        let width = Double(widthField.text!)
        
        let height = Double(heightField.text!)
        resultField.text = String(width! * height!)
    }
    
    
    @IBAction func perimeterButton(_ sender: Any) {
        let width = Double(widthField.text!)
        let height = Double(heightField.text!)
        resultField.text = String( 2 * (width! + height!))
    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        widthField.text = ""
        heightField.text = ""
        resultField.text = "0"
    }
    
    
}

