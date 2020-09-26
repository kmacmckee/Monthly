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
    
    var title: String
    var notes: String?
    var amount: Double
    var category: SpendingCategory?
    
    var repeatInterval: RepeatInteral = .never
    var date: Date
    var futureDates: [Date]?
    
    enum RepeatInteral: String {
        case never = "Never"
        case daily = "Daily"
        case weekly = "Weekly"
        case monthly = "Monthly"
        case yearly = "Yearly"
    }
}


struct SpendingCategory {
    let name: String
    var icon: UIImage?
    var color: UIColor?
}
