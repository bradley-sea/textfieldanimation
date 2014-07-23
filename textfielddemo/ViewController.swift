//
//  ViewController.swift
//  textfielddemo
//
//  Created by Bradley Johnson on 7/23/14.
//  Copyright (c) 2014 learnswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
                            
    @IBOutlet var myTextField: UITextField
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(textField: UITextField!) {
        
        let currentHeight = self.view.bounds.height
        let currentWidth = self.view.bounds.width
        let newY = self.view.bounds.origin.y + textField.frame.origin.y - 100
        let currentX = self.view.bounds.origin.x
        
        UIView.animateWithDuration(0.3, animations:{ () -> Void
            in
        
            self.view.bounds = CGRect(x: currentX, y: newY, width: currentWidth, height: currentHeight)
            
            })
    }


}

