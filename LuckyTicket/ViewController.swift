//
//  ViewController.swift
//  LuckyTicket
//
//  Created by Nikolay on 08.07.15.
//  Copyright (c) 2015 Nikolay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberTicker: UITextField!
    
    var randomNumberTicker: Int = 0
    
    @IBAction func takeAnotherCard(sender: AnyObject) {
        randomNumberTicker = Int(arc4random()) % 999999
        
        // ставим условие чтобы число не выподало меньше 100000
        if 100000 < randomNumberTicker {
        numberTicker.text = "\(randomNumberTicker)"
        }
        else{
         randomNumberTicker = Int(arc4random()) % 999999
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController: YourVoucher = segue.destinationViewController as YourVoucher
        
        
        var index1 = 0
        var index2 = 0
        var a = numberTicker.text.toInt(); a = numberTicker.text.toInt()
        var TheVoickerLucker = NSString()
        
        for var i = 0; i < 3; ++i{
        
            index1 += a! % 10
            a!  /= 10
        }
        
        for var i = 0; i < 3; ++i{
            index2 += a! % 10
            a! /= 10
            
        }
        
        if index1 == index2{
            TheVoickerLucker = "Ваш талон: счастливый"
        }
        else{
            TheVoickerLucker = "Ваш талон: несчастливый"}
        
        
        DestViewController.voucherText = TheVoickerLucker
        
        DestViewController.numberTalonText = numberTicker.text
    }
    
}

