//
//  ViewController.swift
//  calculator Lesson 2
//
//  Created by fortune cookie on 1/16/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var screenResult: UILabel!
    
    
    
    @IBOutlet var mainVIEW: UIView!
    
    @IBOutlet weak var secondNumTExtField: UITextField!
    
    @IBOutlet weak var firstNumTextField: UITextField!
    @IBOutlet weak var mainResultText: UILabel!
   
    @IBOutlet weak var minusButtonOutlet: UIButton!
    
    @IBOutlet weak var divideButtonOutlet: UIButton!
    
    @IBOutlet weak var multiplyButtonOutlet: UIButton!
    
    @IBOutlet weak var plusButtonOutlet: UIButton!
    
    @IBOutlet weak var equalButtonOutlet: UIButton!
    var totalResult = 0.0
    @IBAction func plusActionButton(_ sender: Any) {
       var firstNum = Int(firstNumTextField.text!) ?? 0
       var secondNum = Int(secondNumTExtField.text!) ?? 0
       
        totalResult += Double(firstNum + secondNum)
       
     
        
    }
    
    @IBAction func multiplyActionButton(_ sender: Any) {
        var firstNum = Int(firstNumTextField.text!) ?? 0
        var secondNum = Int(secondNumTExtField.text!) ?? 0
     
        totalResult += Double(firstNum * secondNum)
    
    }
    
    @IBAction func minusActionButton(_ sender: Any) {
        var firstNum = Int(firstNumTextField.text!) ?? 0
        var secondNum = Int(secondNumTExtField.text!) ?? 0
    
        totalResult += Double(firstNum - secondNum)
       
    
    }
    
    @IBAction func divideActionButton(_ sender: Any) {
        var firstNum = Int(firstNumTextField.text!) ?? 0
        var secondNum = Int(secondNumTExtField.text!) ?? 0
      
        totalResult += Double(firstNum / secondNum)
    }
    
    @IBAction func equalActionButton(_ sender: Any) {
        if firstNumTextField.text?.first?.isNumber != true{
            screenResult.text = "введите число"
        }else{
            screenResult.text = String(totalResult)
        }
        if secondNumTExtField.text?.first?.isNumber != true{
            screenResult.text = "введите число"
        }else{
            screenResult.text = String(totalResult)
        }
        
        totalResult = 0
        
        
        
        
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        plusButtonOutlet.layer.cornerRadius = 35
        minusButtonOutlet.layer.cornerRadius = 35
        divideButtonOutlet.layer.cornerRadius = 35
        multiplyButtonOutlet.layer.cornerRadius = 35
        equalButtonOutlet.layer.cornerRadius = 35
        mainVIEW.backgroundColor = UIColor(patternImage: UIImage(named: "Guts") ?? .guts)
        screenResult.text = "введите число"
        
        
        
      
        
    }


}

