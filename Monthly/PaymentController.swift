//
//  PaymentController.swift
//  Monthly
//
//  Created by Kobe McKee on 8/30/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import Foundation

class PaymentController {
    
    let categories = [
        SpendingCategory(name: "Entertainment", icon: nil, color: nil),
        SpendingCategory(name: "Bills", icon: nil, color: nil),
        SpendingCategory(name: "Food", icon: nil, color: nil),
        SpendingCategory(name: "Other", icon: nil, color: nil)
    ]
    
    var payments: [Payment] = []
    
    
    func addPayment(amount: Double, date: Date, recipient: String, category: SpendingCategory, recurringDate: Date?, isRecurringPayment: Bool?, recursionInterval: Payment.RecursionInteral) {
        
        
        let newPayment = Payment(
            amount: amount,
            date: date,
            recipient: recipient,
            category: category,
            recurringDate: recurringDate,
            isRecurringPayment: isRecurringPayment,
            recursionInterval: recursionInterval)
        
        payments.append(newPayment)
    }
    
    
    
}
