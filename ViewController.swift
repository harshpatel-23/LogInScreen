//
//  ViewController.swift
//  LogInScreen
//
//  Created by harsh patel on 28/11/16.
//  Copyright © 2016 harsh patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var passwordButton: UIButton!
    
    @IBOutlet weak var usernameTextField: LoginTextField!
    
    @IBOutlet weak var passwordTextField: LoginTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        
        let attributedString = NSAttributedString(string: "Forgot your Password?", attributes: [NSForegroundColorAttributeName: UIColor.whiteColor(), NSUnderlineColorAttributeName:1])
        
        passwordButton.setAttributedTitle(attributedString, forState: .Normal)
        
        //to add tap gesture to dismiss keyboard while typing
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: Selector("dismissKeyboard")))
        
    }
    
    func dismissKeyboard() {
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        passwordButton.resignFirstResponder()
    }
    
    //to dismiss keyboard when 'return' key is pressed
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

