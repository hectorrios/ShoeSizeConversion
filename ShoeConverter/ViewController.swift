//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Juice Rios on 11/27/14.
//  Copyright (c) 2014 BitFountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTexfield: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(sender: UIButton) {

        let sizeFromTextField = mensShoeSizeTexfield.text.toInt()!
        
        let conversionContant = 30;
        mensConvertedShoeSizeLabel.hidden = false;
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionContant)" + " in European size."
        
        
        mensShoeSizeTexfield.resignFirstResponder()
    }


    @IBAction func convertWomensShoeSizePressed(sender: UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue);
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
    }
}

