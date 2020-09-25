//
//  NewPaymentViewController.swift
//  Monthly
//
//  Created by Kobe McKee on 8/30/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit

class NewPaymentViewController: UIViewController {

    var paymentController: PaymentController?
    var newPayment: Payment?
    
    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

 
    
    
    
    
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "toRepeat" {
            guard let destinationVC = segue.destination as? RepeatViewController else { return }
            destinationVC.paymentController = paymentController
            destinationVC.newPayment = newPayment
        }
    }
    

}
