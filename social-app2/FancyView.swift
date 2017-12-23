//
//  FancyView.swift
//  social-app2
//
//  Created by kasra solati on 12/22/17.
//  Copyright © 2017 kasra solati. All rights reserved.
//

import UIKit

class FancyView: UIView {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowOpacity = 1.0
        layer.shadowColor = UIColor(displayP3Red: shadow_grey, green: shadow_grey, blue: shadow_grey, alpha: 0.6).cgColor
        layer.cornerRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0 , height: 4.0)
    }

}
