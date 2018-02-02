//
//  PickerOld.swift
//  2STreghiter
//
//  Created by DO HOANG VU on 1/31/18.
//  Copyright © 2018 DO HOANG VU. All rights reserved.
//

import UIKit

class PickerOld: UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource {
    

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    let old = Array(0...200)
    
    var age: Int = 18
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(old[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return old.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = String(old[row])
        age = old[row]
        print(age)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UserDefaults.standard.set(age, forKey: "age")
    }

}
