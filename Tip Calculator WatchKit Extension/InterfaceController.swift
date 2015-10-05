//
//  InterfaceController.swift
//  Tip Calculator WatchKit Extension
//
//  Created by Andrea Gines on 8/19/15.
//  Copyright (c) 2015 Andrea Gines. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var tipLabel: WKInterfaceLabel!
    @IBOutlet var dollarLabel: WKInterfaceLabel!
    var cost:Float = 0.0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    @IBAction func sliderChanged(cost: Float) {
        self.cost = cost
        self.dollarLabel.setText("$\(cost)")
    }
    @IBAction func tip10() {
        tipUpdate(0.10)
    }
    @IBAction func tip15() {
        tipUpdate(0.15)
    }
    @IBAction func tip20() {
        tipUpdate(0.20)
    }
    
    func tipUpdate(tip: Float) -> Void
    {
        var tipVal = Int(tip*100.0)
        self.tipLabel.setText("\(tipVal)%")
        self.pushControllerWithName("resultsController", context: ["costOfMeal": self.cost, "tipPercentage": tip])
        
        
    }
    
    
}
