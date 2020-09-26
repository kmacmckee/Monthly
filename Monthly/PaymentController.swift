//
//  PaymentController.swift
//  Monthly
//
//  Created by Kobe McKee on 8/30/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import Foundation
import EventKit

class PaymentController {
    
    var payments: [Payment] = []
    
    
    let categories = [
        SpendingCategory(name: "Entertainment", icon: nil, color: nil),
        SpendingCategory(name: "Bills", icon: nil, color: nil),
        SpendingCategory(name: "Food", icon: nil, color: nil),
        SpendingCategory(name: "Other", icon: nil, color: nil),
        SpendingCategory(name: "Income", icon: nil, color: nil)
    ]
    
    
    func addPayment(title: String, notes: String, amount: Double, category: SpendingCategory, repeatInterval: Payment.RepeatInteral, date: Date) {
    
        let newPayment = Payment(title: title,
                                 notes: notes,
                                 amount: amount,
                                 category: category,
                                 repeatInterval: repeatInterval,
                                 date: date)
                                 //futureDates: futureDates)
        
        payments.append(newPayment)
    }
    
    
//    func getRepeatValue(_ interval: Payment.RepeatInteral) -> EKRecurrenceRule? {
//        switch interval {
//        case .never:
//            return nil
//        case .daily:
//            let rule = EKRecurrenceRule(recurrenceWith: .daily, interval: 1, end: nil)
//            return rule
//        case .weekly:
//            let rule = EKRecurrenceRule(recurrenceWith: .weekly, interval: 1, end: nil)
//            return rule
//        case .monthly:
//            let rule = EKRecurrenceRule(recurrenceWith: .monthly, interval: 1, end: nil)
//            return rule
//        case .yearly:
//            let rule = EKRecurrenceRule(recurrenceWith: .yearly, interval: 1, end: nil)
//            return rule
//        }
//    }
}
