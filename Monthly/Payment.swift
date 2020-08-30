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
    
    enum RecursionInteral {
        case daily
        case monthly
        case yearly
    }
    
    let amount: Double
    let date: Date
    let recipient: String
    let category: SpendingCategory
    
    var recurringDate: Date?
    var isRecurringPayment: Bool?
    var recursionInterval: RecursionInteral
    
}


struct SpendingCategory {
    let name: String
    let icon: UIImage
    let color: UIColor
}
