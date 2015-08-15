//
//  YourVoucher.swift
//  LuckyTicket
//
//  Created by Nikolay on 08.07.15.
//  Copyright (c) 2015 Nikolay. All rights reserved.
//

import Foundation
import UIKit

class YourVoucher: UIViewController {
    
    @IBOutlet weak var theVoucher: UILabel!
    @IBOutlet weak var theNumberTalon: UILabel!
    
    var voucherText = String()
    var numberTalonText = String()
    
    override func viewDidLoad() {
    
        theVoucher.text = voucherText
        theNumberTalon.text = (" Номер талона: \(numberTalonText)")
    }
}