//
//  ViewController.swift
//  HW3
//
//  Created by Nur on 30.11.2023.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
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
    var textFieldRed1 = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenRGB.layer.cornerRadius = 30
        textFieldRed.delegate = self
        textFieldGreen.delegate = self
        textFieldBlue.delegate = self

    }

   
//    func dismissKeyboard() {
//        view.endEditing(true)
//    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldRed.resignFirstResponder()
        textFieldGreen.resignFirstResponder()
        textFieldBlue.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func switchRedMuved() {
        alphaOfRed = CGFloat(switchRed.value)
        screenRGB.backgroundColor = UIColor(red: alphaOfRed, green: alphaOfGreen, blue: alphaOfBlue, alpha: 1)
        labelRed.text = String(round(100 * switchRed.value) / 100)
        textFieldRed.text = labelRed.text
    }
    @IBAction func switchGreenMuved(_ sender: Any) {
        alphaOfGreen = CGFloat(switchGreen.value)
        screenRGB.backgroundColor = UIColor(red: alphaOfRed, green: alphaOfGreen, blue: alphaOfBlue, alpha: 1)
        labelGreen.text = String(round(100 * switchGreen.value) / 100)
        textFieldGreen.text = labelGreen.text
    }
    @IBAction func switchBlueMuved(_ sender: Any) {
        alphaOfBlue = CGFloat(switchBlue.value)
        screenRGB.backgroundColor = UIColor(red: alphaOfRed, green: alphaOfGreen, blue: alphaOfBlue, alpha: 1)
        labelBlue.text = String(round(100 * switchBlue.value) / 100)
        textFieldBlue.text = labelBlue.text
    }
    
    @IBAction func textFieldRedWrited() {
        if let converterToCGFloat = NumberFormatter().number(from: textFieldRed.text ?? "0.0") {
            alphaOfRed = CGFloat(truncating: converterToCGFloat)
        }
        print(alphaOfRed)
        screenRGB.backgroundColor = UIColor(red: alphaOfRed, green: alphaOfGreen, blue: alphaOfBlue, alpha: 1)
        switchRed.value = Float(alphaOfRed)
        labelRed.text = String(round(100 * switchRed.value) / 100)
    }
   
    
    @IBAction func textFieldGreenWrited() {
        if let converterToCGFloat = NumberFormatter().number(from: textFieldGreen.text ?? "0.0") {
            alphaOfGreen = CGFloat(truncating: converterToCGFloat)
        }
        screenRGB.backgroundColor = UIColor(red: alphaOfRed, green: alphaOfGreen, blue: alphaOfBlue, alpha: 1)
        switchGreen.value = Float(alphaOfGreen)
        labelGreen.text = String(round(100 * switchGreen.value) / 100)
    }
    
    @IBAction func textFieldBlueWrited() {
        if let converterToCGFloat = NumberFormatter().number(from: textFieldBlue.text ?? "0.0") {
            alphaOfBlue = CGFloat(truncating: converterToCGFloat)
        }
        screenRGB.backgroundColor = UIColor(red: alphaOfRed, green: alphaOfGreen, blue: alphaOfBlue, alpha: 1)
        switchBlue.value = Float(alphaOfBlue)
        labelBlue.text = String(round(100 * switchBlue.value) / 100)
    }
    
}


