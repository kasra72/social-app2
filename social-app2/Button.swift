//
//  Button.swift
//  social-app2
//
//  Created by kasra solati on 12/22/17.
//  Copyright © 2017 kasra solati. All rights reserved.
//

import UIKit

class Button: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowColor = UIColor(displayP3Red: shadow_grey, green: shadow_grey, blue: shadow_grey, alpha: 0.6).cgColor
        layer.shadowOffset = CGSize(width: 0.1, height: 0.1)
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 5.0
        layer.cornerRadius = frame.size.height / 3
    }
   

}
