//
//  Payment.swift
//  Monthly
//
//  Created by Kobe McKee on 8/30/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import Foundation
import UIKit

struct Payment {
    
    enum RepeatInteral: String {
        case never = "Never"
        case daily = "Daily"
        case weekly = "Weekly"
        case biweekly = "Biweekly"
        case monthly = "Monthly"
        case every3months = "Every 3 Months"
        case every6months = "Every 6 Months"
        case yearly = "Yearly"
    }
    
    let amount: Double
    let date: Date
    let recipient: String
    let category: SpendingCategory
    
    var recurringDate: Date?
    var isRecurringPayment: Bool?
    var recursionInterval: RepeatInteral
    
}


struct SpendingCategory {
    let name: String
    var icon: UIImage?
    var color: UIColor?
}
