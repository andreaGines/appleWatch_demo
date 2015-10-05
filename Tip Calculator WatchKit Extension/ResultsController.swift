//
//  ResultsController.swift
//  Tip Calculator
//
//  Created by Andrea Gines on 8/20/15.
//  Copyright (c) 2015 Andrea Gines. All rights reserved.
//

import WatchKit
import Foundation
import UIKit


class ResultsController: WKInterfaceController {

    @IBOutlet var tipAmountLabel: WKInterfaceLabel!
    @IBOutlet var costOfMealLabel:WKInterfaceLabel!
    @IBOutlet var tipLabel: WKInterfaceLabel!
    
    @IBOutlet var mealTotalLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        var tipDic = context as! [String:Float]
        var tipPercentage = tipDic["tipPercentage"]!
        var costOfMeal = tipDic["costOfMeal"]!
        
       
        var tip = Int(tipPercentage * 100.0)
        self.tipLabel.setText("\(tip)% Tip:")
        
        self.costOfMealLabel.setText("$\(costOfMeal)")
        println(tipPercentage)
        self.tipAmountLabel.setText("$\(costOfMeal*tipPercentage)")
        self.mealTotalLabel.setText("$\(costOfMeal + costOfMeal*tipPercentage)")
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
