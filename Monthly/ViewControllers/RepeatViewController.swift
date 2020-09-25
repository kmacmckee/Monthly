//
//  RepeatViewController.swift
//  Monthly
//
//  Created by Kobe McKee on 9/22/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit

class RepeatViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var paymentController: PaymentController?
    var newPayment: Payment?
    
    
    @IBOutlet weak var repeatOptionTableView: UITableView!
    
    let repeatOptions = ["Never",
                         "Daily",
                         "Weekly",
                         "Biweekly",
                         "Monthly",
                         "Every 3 Months",
                         "Every 6 Months",
                         "Yearly"]
    
    var selectedOption: String?
    
    override func viewWillLayoutSubviews() {
        guard let payment = newPayment else { return }
        selectedOption = payment.recursionInterval?.rawValue
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        repeatOptionTableView.dataSource = self
        repeatOptionTableView.delegate = self
        repeatOptionTableView.layer.cornerRadius = 10
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
    
    
    
    
    // MARK: - Navigation

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//    }

}
