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
    @IBOutlet weak var datePickerView: UIView!
    @IBOutlet weak var repeatButtonView: UIView!
    @IBOutlet weak var amountView: UIView!
    
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
        
        notesTextView.delegate = self
        notesTextView.text = "Notes"
        notesTextView.textColor = .placeholderText
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard(_:)))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        makePretty()
    }
    

 
    func makePretty() {
        titleandNotesView.layer.cornerRadius = 10
        datePickerView.layer.cornerRadius = 10
        repeatButtonView.layer.cornerRadius = 10
        
        plusButton.layer.cornerRadius = 20
        minusButton.layer.cornerRadius = 20
        
        amountView.layer.borderWidth = 1
        amountView.layer.shadowColor = UIColor.black.cgColor
        amountView.layer.shadowOpacity = 10
        amountView.layer.shadowOffset = .zero
        amountView.layer.shadowRadius = 10
        

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


// MARK: - Keyboard and Text Editors
extension NewPaymentViewController: UITextViewDelegate {
    
    @objc func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        titleTextField.resignFirstResponder()
        notesTextView.resignFirstResponder()
        amountTextField.resignFirstResponder()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Notes" && textView.textColor == .placeholderText {
            textView.text = ""
            textView.textColor = .label
        }
        textView.becomeFirstResponder()
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text == "" {
            textView.text = "Notes"
            textView.textColor = .placeholderText
        }
        textView.resignFirstResponder()
    }
}
