//
//  OverviewViewController.swift
//  Monthly
//
//  Created by Kobe McKee on 8/30/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit

class OverviewViewController: UIViewController/*, UITableViewDelegate, UITableViewDataSource*/ {
    
    let paymentController = PaymentController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    // MARK: Payment TableView
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }

    
    // MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNewPayment" {
            guard let destinationVC = segue.destination as? NewPaymentViewController else { return }
            
        }
    }
    
}

