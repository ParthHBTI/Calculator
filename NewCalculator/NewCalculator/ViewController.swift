//
//  ViewController.swift
//  NewCalculator
//
//  Created by mac on 20/09/16.
//  Copyright © 2016 kloudRac.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
            default :
                break;
            }
        }
        method = 0
        selectNumber = 0
        screenText.text = String(totalRunning)

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
            default :
                break;
            }
        }
        method = 4
        selectNumber = 0
    }
}

