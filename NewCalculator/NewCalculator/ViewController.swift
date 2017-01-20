//
//  ViewController.swift
//  NewCalculator
//
//  Created by mac on 20/09/16.
//  Copyright © 2016 kloudRac.com. All rights reserved.
//

import UIKit
import Darwin
class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var screenText: UITextField!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var bDiv: UIButton!
    @IBOutlet weak var bMul: UIButton!
    @IBOutlet weak var bAdd: UIButton!
    @IBOutlet weak var bSub: UIButton!
    @IBOutlet weak var b0: UIButton!
    @IBOutlet weak var bEql: UIButton!
    @IBOutlet weak var bAC: UIButton!
    
    var selectNumber = Int()
    
    var method = Int()
    
    var totalRunning = Float()
    var powerResult = Int()
    var digit = String()
    var flag = Bool()
    var checkFlag = Bool()
    override func viewDidLoad() {
        super.viewDidLoad()
        screenText.delegate = self
      /*  b1.layer.borderWidth = 0.5
        b1.layer.borderColor = UIColor.grayColor().CGColor
        b2.layer.borderWidth = 1.0
        b2.layer.borderColor = UIColor.grayColor().CGColor
        b3.layer.borderWidth = 0.5
        b3.layer.borderColor = UIColor.grayColor().CGColor
        b4.layer.borderWidth = 0.5
        b4.layer.borderColor = UIColor.grayColor().CGColor
        b5.layer.borderWidth = 1.0
        b5.layer.borderColor = UIColor.grayColor().CGColor
        b6.layer.borderWidth = 0.5
        b6.layer.borderColor = UIColor.grayColor().CGColor
        b7.layer.borderWidth = 0.5
        b7.layer.borderColor = UIColor.grayColor().CGColor
        b8.layer.borderWidth = 1.0
        b8.layer.borderColor = UIColor.grayColor().CGColor
        b9.layer.borderWidth = 0.5
        b9.layer.borderColor = UIColor.grayColor().CGColor
        b0.layer.borderWidth = 0.5
        b0.layer.borderColor = UIColor.grayColor().CGColor
        bAdd.layer.borderWidth = 0.5
        bAdd.layer.borderColor = UIColor.grayColor().CGColor
        bDiv.layer.borderWidth = 0.5
        bDiv.layer.borderColor = UIColor.grayColor().CGColor
        bMul.layer.borderWidth = 0.5
        bMul.layer.borderColor = UIColor.grayColor().CGColor
        bSub.layer.borderWidth = 0.5
        bSub.layer.borderColor = UIColor.grayColor().CGColor
        bAC.layer.borderWidth = 0.5
        bAC.layer.borderColor = UIColor.grayColor().CGColor
        bEql.layer.borderWidth = 1.0
        bEql.layer.borderColor = UIColor.grayColor().CGColor*/
        var frameRect:  CGRect = screenText.frame
        frameRect.size.height = 100
        screenText.frame = frameRect
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func action1(sender: AnyObject) {
        selectNumber = selectNumber*10;
        selectNumber = selectNumber + 1;
        screenText.text = String(selectNumber)
    }
    
    @IBAction func action2(sender: AnyObject) {
        selectNumber = selectNumber*10;
        selectNumber = selectNumber + 2;
        screenText.text = String(selectNumber)
    }
    
    @IBAction func action3(sender: AnyObject) {
        selectNumber = selectNumber*10;
        selectNumber = selectNumber + 3;
        screenText.text = String(selectNumber)
    }
    
    @IBAction func action4(sender: AnyObject) {
        selectNumber = selectNumber*10;
        selectNumber = selectNumber + 4;
        screenText.text = String(selectNumber)
    }
    
    @IBAction func action5(sender: AnyObject) {
        selectNumber = selectNumber*10;
        selectNumber = selectNumber + 5;
        screenText.text = String(selectNumber)
    }
    
    @IBAction func action6(sender: AnyObject) {
        selectNumber = selectNumber*10;
        selectNumber = selectNumber + 6;
        screenText.text = String(selectNumber)
    }
    
    @IBAction func action7(sender: AnyObject) {
        selectNumber = selectNumber*10;
        selectNumber = selectNumber + 7;
        screenText.text = String(selectNumber)
    }
    
    @IBAction func action8(sender: AnyObject) {
        selectNumber = selectNumber*10;
        selectNumber = selectNumber + 8;
        screenText.text = String(selectNumber)
    }
    
    @IBAction func action9(sender: AnyObject) {
        selectNumber = selectNumber*10;
        selectNumber = selectNumber + 9;
        screenText.text = String(selectNumber)
    }
    
    @IBAction func actionAllClear(sender: AnyObject) {
        method = 0
        totalRunning = 0
        selectNumber = 0
        screenText.text = String(selectNumber)
    }
    
    func checkDecimal() {
        if checkFlag {
            screenText.text = String(totalRunning) + String(selectNumber/10)
            checkFlag = false
        } else {
            screenText.text = String(selectNumber)
        }
    }
    
    @IBAction func actionResult(sender: AnyObject) {
        if(totalRunning == 0)
        {
            totalRunning = Float(selectNumber)
        }
        else
        {
            switch(method)
            {
            case 1:
                totalRunning = totalRunning * Float(selectNumber)
                break;
            case 2:
                totalRunning = totalRunning / Float(selectNumber)
                break;
            case 3:
                totalRunning = totalRunning+Float(selectNumber)
                break;
            case 4:
                totalRunning = totalRunning-Float(selectNumber)
                break;
            case 5:
                totalRunning = totalRunning/100*Float(selectNumber)
                break;
            case 6:
                powerResult = Int(pow(Double(totalRunning),Double(selectNumber)))
                totalRunning = Float(powerResult)
                break;
            case 7:
                totalRunning = sqrt(totalRunning)
                break;
            case 8:
                   digit = digit.stringByAppendingString("\(selectNumber)")
                   screenText.text = digit
                   flag = true
                    break;
            default :
                break;
            }
        }
        method = 0
        selectNumber = 0
        if !flag {
        screenText.text = String(totalRunning)
        }
        flag = false
    }
    
    @IBAction func action0(sender: AnyObject) {
        selectNumber = selectNumber*10;
        selectNumber = selectNumber + 0;
        screenText.text = String(selectNumber)
    }
    
    @IBAction func actionDevide(sender: AnyObject) {
        if(totalRunning == 0) {
            totalRunning = Float(selectNumber)
        } else {
            switch(method) {
            case 1:
                totalRunning = totalRunning * Float(selectNumber)
                break;
            case 2:
                totalRunning = totalRunning/Float(selectNumber)
                break;
            case 3:
                totalRunning = totalRunning + Float(selectNumber)
                break;
            case 4:
                totalRunning = totalRunning - Float(selectNumber)
                break;
            case 5:
                totalRunning = totalRunning/100*Float(selectNumber)
                break;
            case 6:
                powerResult = Int(pow(Double(totalRunning),Double(selectNumber)))
                totalRunning = Float(powerResult)
                break;
            case 7:
                totalRunning = sqrt(totalRunning)
                break;
            default :
                break;
            }
        }
        method = 2
        selectNumber = 0
    }
    
    @IBAction func actionMultiply(sender: AnyObject) {
        if(totalRunning == 0)
        {
            totalRunning = Float(selectNumber)
        }
        else
        {
            switch(method)
            {
            case 1:
                totalRunning = totalRunning*Float(selectNumber)
                break;
            case 2:
                totalRunning = totalRunning/Float(selectNumber)
                break;
            case 3:
                totalRunning = totalRunning+Float(selectNumber)
                break;
            case 4:
                totalRunning = totalRunning-Float(selectNumber)
                break;
            case 5:
                totalRunning = totalRunning/100*Float(selectNumber)
                break;
            case 6:
                powerResult = Int(pow(Double(totalRunning),Double(selectNumber)))
                totalRunning = Float(powerResult)
                break;
            case 7:
                totalRunning = sqrt(totalRunning)
                break;
            default :
                break;
                
            }
        }
        method = 1
        selectNumber = 0
    }
    
    @IBAction func actionSum(sender: AnyObject) {
        if(totalRunning == 0)
        {
            totalRunning = Float(selectNumber)
        }
        else
        {
            switch(method)
            {
            case 1:
                totalRunning = totalRunning*Float(selectNumber)
                break;
            case 2:
                totalRunning = totalRunning/Float(selectNumber)
                break;
            case 3:
                totalRunning = totalRunning+Float(selectNumber)
                break;
            case 4:
                totalRunning = totalRunning-Float(selectNumber)
                break;
            case 5:
                totalRunning = totalRunning/100*Float(selectNumber)
                break;
            case 6:
                powerResult = Int(pow(Double(totalRunning),Double(selectNumber)))
                totalRunning = Float(powerResult)
                break;
            case 7:
                totalRunning = sqrt(totalRunning)
                break;
            default :
                break;
            }
        }
        method = 3
        selectNumber = 0
    }
    
    @IBAction func actionMinus(sender: AnyObject) {
        if(totalRunning == 0)
        {
            totalRunning = Float(selectNumber)
        }
        else
        {
            switch(method)
            {
            case 1:
                totalRunning = totalRunning*Float(selectNumber)
                break;
            case 2:
                totalRunning = totalRunning/Float(selectNumber)
                break;
            case 3:
                totalRunning = totalRunning+Float(selectNumber)
                break;
            case 4:
                totalRunning = totalRunning-Float(selectNumber)
                break;
            case 5:
                totalRunning = totalRunning/100*Float(selectNumber)
                break;
            case 6:
                powerResult = Int(pow(Double(totalRunning),Double(selectNumber)))
                totalRunning = Float(powerResult)
                break;
            case 7:
                totalRunning = sqrt(totalRunning)
                break;
            default :
                break;
            }
        }
        method = 4
        selectNumber = 0
    }
    @IBAction func percentageAction(sender: AnyObject) {
        if(totalRunning == 0)
        {
            totalRunning = Float(selectNumber)
        }
        else
        {
            switch(method)
            {
            case 1:
                totalRunning = totalRunning*Float(selectNumber)
                break;
            case 2:
                totalRunning = totalRunning/Float(selectNumber)
                break;
            case 3:
                totalRunning = totalRunning+Float(selectNumber)
                break;
            case 4:
                totalRunning = totalRunning-Float(selectNumber)
                break;
            case 5:
                totalRunning = totalRunning/100*Float(selectNumber)
                break;
            case 6:
                powerResult = Int(pow(Double(totalRunning),Double(selectNumber)))
                totalRunning = Float(powerResult)
                break;
            case 7:
                totalRunning = sqrt(totalRunning)
                break;
            default :
                break;
            }
        }
        method = 5
        selectNumber = 0
    }
    
    @IBAction func pointAction(sender: AnyObject) {
        digit = String(selectNumber ) + "."
       screenText.text = screenText.text?.stringByAppendingString(".")
        totalRunning = Float(screenText.text!)!
        method = 8
        selectNumber = 0
    }
    
    @IBAction func powerAction(sender: AnyObject) {
        if(totalRunning == 0)
        {
            totalRunning = Float(selectNumber)
        }
        else
        {
            switch(method)
            {
            case 1:
                totalRunning = totalRunning*Float(selectNumber)
                break;
            case 2:
                totalRunning = totalRunning/Float(selectNumber)
                break;
            case 3:
                totalRunning = totalRunning+Float(selectNumber)
                break;
            case 4:
                totalRunning = totalRunning-Float(selectNumber)
                break;
            case 5:
                totalRunning = totalRunning/100*Float(selectNumber)
                break;
            case 6:
                powerResult = Int(pow(Double(totalRunning),Double(selectNumber)))
                totalRunning = Float(powerResult)
                break;
            case 7:
                totalRunning = sqrt(totalRunning)
                break;
            default :
                break;
            }
        }
        method = 6
        selectNumber = 0
    }
    
    @IBAction func rootAction(sender: AnyObject) {
        if(totalRunning == 0)
        {
            totalRunning = Float(selectNumber)
        }
        else
        {
            switch(method)
            {
            case 1:
                totalRunning = totalRunning*Float(selectNumber)
                break;
            case 2:
                totalRunning = totalRunning/Float(selectNumber)
                break;
            case 3:
                totalRunning = totalRunning+Float(selectNumber)
                break;
            case 4:
                totalRunning = totalRunning-Float(selectNumber)
                break;
            case 5:
                totalRunning = totalRunning/100*Float(selectNumber)
                break;
            case 6:
                powerResult = Int(pow(Double(totalRunning),Double(selectNumber)))
                totalRunning = Float(powerResult)
                break;
            case 7:
                totalRunning = sqrt(totalRunning)
                break;
            default :
                break;
            }
        }
        method = 7
        selectNumber = 0
    }
        
}

