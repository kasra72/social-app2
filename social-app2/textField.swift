//
//  textField.swift
//  social-app2
//
//  Created by kasra solati on 12/22/17.
//  Copyright © 2017 kasra solati. All rights reserved.
//

import UIKit

class textField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = UIColor(displayP3Red: shadow_grey, green: shadow_grey , blue: shadow_grey, alpha: 0.2).cgColor
        layer.borderWidth = 1
        layer.cornerRadius = self.frame.size.height / 2
        
    }
    override func textRect(forBounds bounds: CGRect) -> CGRect {
       return bounds.insetBy(dx: 10, dy: 5)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }

}
