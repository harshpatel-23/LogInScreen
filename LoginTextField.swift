//
//  LoginTextField.swift
//  LogInScreen
//
//  Created by harsh patel on 29/11/16.
//  Copyright © 2016 harsh patel. All rights reserved.
//

import UIKit

@IBDesignable
class LoginTextField: UITextField {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.borderColor = UIColor(white: 231/255, alpha: 1).CGColor
        self.layer.borderWidth = 1
    }
    
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 8, dy: 7)
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return textRectForBounds(bounds)
    }
    

}
