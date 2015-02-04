//
//  ViewController.swift
//  AgeOfMilo
//
//  Created by William Lam on 2015-02-02.
//  Copyright (c) 2015 William Lam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    
    @IBOutlet weak var convertedToDogYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertAgeButtonPressed(sender: UIButton) {
        
        let ageFromTextField = humanYearsTextField.text.toInt()!
        
        let toDogYearsMultiplier = ageFromTextField*7
        
        convertedToDogYearsLabel.hidden = false
        
        convertedToDogYearsLabel.text = "\(toDogYearsMultiplier)" + " is your dog's age in human years."
        
        humanYearsTextField.resignFirstResponder()
    }

}

