//
//  ViewController.swift
//  HW3
//
//  Created by Nur on 30.11.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var screenRGB: UIView!
    @IBOutlet var labelBlue: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelRed: UILabel!

    
    @IBOutlet var switchRed: UISlider!
    @IBOutlet var switchGreen: UISlider!
    @IBOutlet var switchBlue: UISlider!
    
    @IBOutlet var textFieldRed: UITextField!
    @IBOutlet var textFieldBlue: UITextField!
    @IBOutlet var textFieldGreen: UITextField!
    var alphaOfRed: CGFloat = 0.0
    var alphaOfGreen: CGFloat = 0.0
    var alphaOfBlue: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func switchRedMuved() {
        
        alphaOfRed = CGFloat(switchRed.value)
        screenRGB.backgroundColor = .red.withAlphaComponent(alphaOfRed)
        labelRed.text = String(switchRed.value)
    }
    @IBAction func switchGreenMuved(_ sender: Any) {
    }
    @IBAction func switchBlueMuved(_ sender: Any) {
    }
    @IBAction func textFieldRedWrited() {
    }
    
    @IBAction func textFieldGreenWrited() {
    }
    
    @IBAction func textFieldBlueWrited() {
    }
}

