//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Sehajbir Randhawa on 5/19/18.
//  Copyright © 2018 Sehajbir. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2.0
    }

}
