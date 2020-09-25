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
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    
    @IBOutlet weak var titleandNotesView: UIView!
    @IBOutlet weak var categorySegmentedView: UIView!
    @IBOutlet weak var datePickerView: UIView!
    @IBOutlet weak var repeatButtonView: UIView!
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var notesTextView: UITextView!
    @IBOutlet weak var categorySegmentedControl: UISegmentedControl!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var repeatButton: UIButton!
    
    
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
