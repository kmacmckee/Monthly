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
    
    var title: String?
    var notes: String?
    var amount: Double?
    var date: Date?
    var recipient: String?
    var category: SpendingCategory?
    
    var repeatInterval: RepeatInteral
    var recurringDate: Date?
    
}


struct SpendingCategory {
    let name: String
    var icon: UIImage?
    var color: UIColor?
}
