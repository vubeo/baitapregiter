//
//  CityTableViewController.swift
//  2STreghiter
//
//  Created by DO HOANG VU on 1/29/18.
//  Copyright © 2018 DO HOANG VU. All rights reserved.
//

import UIKit

class CityTableViewController: UITableViewController {
    var array:[City] = DataServices.shared.cities
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
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
        return array.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = array[indexPath.row].name
        return cell
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let DTVC = segue.destination as? DistrictsTableViewController
        if let index = tableView.indexPathForSelectedRow?.row {
            DTVC?.selectedCityCode = DataServices.shared.cities[index].cityCode
            UserDefaults.standard.set(DataServices.shared.cities[index].name, forKey: "cityName")
        }
    }
    
    // MARK: Navigation

    

}
