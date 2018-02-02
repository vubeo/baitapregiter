//
//  RadioButton.swift
//  2STreghiter
//
//  Created by DO HOANG VU on 1/30/18.
//  Copyright © 2018 DO HOANG VU. All rights reserved.
//

import UIKit

class RadioButton: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectedButton(_ sender: UIButton) {
        // cho cac button ve trang thai no selected
        for button in buttons {
            button.isSelected = false
        }
        // cho nut chon -> Selected
        sender.isSelected = !sender.isSelected
    }
    

    
}
