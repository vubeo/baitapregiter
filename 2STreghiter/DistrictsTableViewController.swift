//
//  DistrictsTableViewController.swift
//  2STreghiter
//
//  Created by DO HOANG VU on 1/29/18.
//  Copyright © 2018 DO HOANG VU. All rights reserved.
//

import UIKit

class DistrictsTableViewController: UITableViewController {
    var selectedCityCode:Int = 0
    var distrctOfselectedCity :[District] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        distrctOfselectedCity = DataServices.shared.districts.filter{$0.cityCode == selectedCityCode}
        print(distrctOfselectedCity)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return distrctOfselectedCity.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celldistrict", for: indexPath)

        cell.textLabel?.text = distrctOfselectedCity[indexPath.row].districtName

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        UserDefaults.standard.set(distrctOfselectedCity[indexPath.row].districtName, forKey: "district")
    }
 
   

}
