//
//  City.swift
//  2STreghiter
//
//  Created by DO HOANG VU on 1/29/18.
//  Copyright © 2018 DO HOANG VU. All rights reserved.
//

import Foundation
struct City {
    var name : String
    var cityCode: Int
    init?(dict: Dictionary<AnyHashable,Any>) {
        guard let name = dict["Name"] as? String else {return nil}
        guard let cityCode = dict["CityCode"] as? Int else {return nil}
        self.name = name
        self.cityCode = cityCode
    }
}
    
