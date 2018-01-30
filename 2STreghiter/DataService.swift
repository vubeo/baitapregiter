//
//  DataService.swift
//  2STreghiter
//
//  Created by DO HOANG VU on 1/29/18.
//  Copyright © 2018 DO HOANG VU. All rights reserved.
//

import Foundation
class DataServices {
    static let shared = DataServices()
    //------------------------------------------------------------------------------------------------
    // Data City
    private var _cities: [City]?
    var cities: [City] {
        get {
            if _cities == nil{
                updateCities()
                
            }
            return _cities ?? []
        }
        set {
            _cities = newValue
        }
    }
    private func updateCities() {
        _cities = []
        if let plistCities = PlistServices().getDictionaryFrom(plist: "Cities.plist") {
            guard let cities = plistCities["Cities"] as? [Dictionary<AnyHashable,Any>] else {return}
            for item in cities {
                _cities?.append(City(dict: item)!)
            }
        }
    }
    //----------------------------------------------------------------------------------------------
    // Data disctrct
    private var _district: [District]?
    var districts : [District] {
        get {
            if _district == nil {
                updateDistrict()
            }
            return _district ?? []
            
        }
        set {
            _district = newValue
            
        }
    }
    private func updateDistrict() {
        _district = []
        if let plistDistrcts = PlistServices().getDictionaryFrom(plist: "Districts.plist") {
            guard let distrcts = plistDistrcts["Districts"] as? [Dictionary<AnyHashable,Any>] else {return}
            for itemdistrct in distrcts {
                _district?.append(District(dict:itemdistrct)!)
            }
        }
    }
}


//--------------------------------------------------------------------------
class PlistServices {
    func getDictionaryFrom(plist: String) -> Dictionary<AnyHashable, Any>? {
        var result : Dictionary<AnyHashable, Any>?
        let fileNameComponents = plist.components(separatedBy: ".")
        guard let filePath = Bundle.main.path(forResource: fileNameComponents.first ?? "", ofType: fileNameComponents.last ?? "") else {
            return nil
        }
        
        guard FileManager.default.fileExists(atPath: filePath) == true else {
            return nil
        }
        
        guard let data = FileManager.default.contents(atPath: filePath) else {
            return nil
        }
        do {
            guard let root = try PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? Dictionary<AnyHashable, Any> else {
                return nil
            }
            result = root
            
        } catch {
            print("Error: PropertyListSerialization error")
        }
        
        return result
        
    }
}
