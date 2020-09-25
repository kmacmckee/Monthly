//
//  PaymentController.swift
//  Monthly
//
//  Created by Kobe McKee on 8/30/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import Foundation

class PaymentController {
    
    init() {
    }
    

    var payments: [Payment] = [
        Payment(title: "Test", notes: "TestNotes", amount: 20.00, date: Date(), recipient: "Credit Card", category: SpendingCategory(name: "Bill", icon: nil, color: nil), repeatInterval: .monthly, recurringDate: Date())
        ]
    
    let categories = [
        SpendingCategory(name: "Entertainment", icon: nil, color: nil),
        SpendingCategory(name: "Bills", icon: nil, color: nil),
        SpendingCategory(name: "Food", icon: nil, color: nil),
        SpendingCategory(name: "Other", icon: nil, color: nil),
        SpendingCategory(name: "Income", icon: nil, color: nil)
    ]
    
    
    func addPayment(amount: Double, date: Date, recipient: String, category: SpendingCategory, recurringDate: Date?, repeatInterval: Payment.RepeatInteral) {
        
        let newPayment = Payment(
            amount: amount,
            date: date,
            recipient: recipient,
            category: category,
            repeatInterval: repeatInterval,
            recurringDate: recurringDate)
        
        payments.append(newPayment)
    }
    
    
    
}
