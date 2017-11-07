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

    //Call Calculate area
    @IBAction func areaButton(_ sender: Any) {
        calculate(calc: "area")
    }
    
    //Call Calculate perimetro
    @IBAction func perimeterButton(_ sender: Any) {
        calculate(calc: "perimetro")
    }
    // Created unique func calculate for areaButton and perimeterButton
    func calculate(calc:String) {
        if let width = Double(widthField.text!) {
            if let height = Double(heightField.text!) {
                let result:Double
                if(calc == "area") {
                    result = width * height
                } else {
                    result = 2 * (width + height)
                }
                resultField.text = String( result )
            } else {
                heightField.text = ""
            }
        } else {
            widthField.text = ""
        }
    }
    // Clean field larghezza and lunghezza and result 0
    @IBAction func clearButton(_ sender: Any) {
        widthField.text = ""
        heightField.text = ""
        resultField.text = "0"
    }
    
    
}

