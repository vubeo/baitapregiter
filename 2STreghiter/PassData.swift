//
//  PassData.swift
//  2STreghiter
//
//  Created by DO HOANG VU on 1/31/18.
//  Copyright © 2018 DO HOANG VU. All rights reserved.
//

import UIKit

class PassData: UIViewController {

    @IBOutlet weak var _seclectedCity: UITextField!
    
    @IBOutlet weak var _distrsctCity: UITextField!
    
    @IBOutlet weak var _sex: UITextField!
    
    @IBOutlet weak var _age: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        showdata()
    }
    func showdata() {
        let seclectedCity = UserDefaults.standard.string(forKey: "cityName")
        _seclectedCity.text = seclectedCity
        let distrsctCity = UserDefaults.standard.string(forKey: "district")
        _distrsctCity.text = distrsctCity
        let selectedAge = UserDefaults.standard.integer(forKey: "age")
        _age.text = String(selectedAge)
    }
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let data = segue.destination as? AllData {
            data.receive = 
        }
    }
   
}

