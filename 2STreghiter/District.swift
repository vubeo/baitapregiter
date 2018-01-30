//
//  District.swift
//  2STreghiter
//
//  Created by DO HOANG VU on 1/29/18.
//  Copyright © 2018 DO HOANG VU. All rights reserved.
//

import Foundation
struct District {
    var districtName : String
    var districtCode : Int
    var cityCode: Int
    init?(dict: Dictionary<AnyHashable,Any>) {
        guard let districtName = dict["Name"] as? String else {return nil}
        guard let districtCode = dict["DistrictCode"] as? Int else {return nil}
        guard let cityCode     = dict["CityCode"] as? Int else {return nil}
        
        self.cityCode = cityCode
        self.districtCode = districtCode
        self.districtName = districtName
    }
}
