//
//  BorderButton.swift
//  App-Swoosh
//
//  Created by Hassan Ashraf on 5/29/18.
//  Copyright © 2018 h2m. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
