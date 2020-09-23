//
//  RepeatViewController.swift
//  Monthly
//
//  Created by Kobe McKee on 9/22/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit

class RepeatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var repeatOptionTableView: UITableView!
    
    let repeatOptions = ["Never",
                         "Daily",
                         "Weekly",
                         "Biweekly",
                         "Monthly",
                         "Every 3 Months",
                         "Every 6 Months",
                         "Yearly"]
    
    var selectedOption: String? = "Never"

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        repeatOptionTableView.dataSource = self
        repeatOptionTableView.delegate = self
        repeatOptionTableView.layer.cornerRadius = 5
    }
    


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repeatOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "repeatOptionCell", for: indexPath)
        
        let option = repeatOptions[indexPath.row]
        cell.textLabel?.text = option
        if option == selectedOption {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedCell = repeatOptions[indexPath.row]
        selectedOption = selectedCell
        repeatOptionTableView.reloadData()
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
