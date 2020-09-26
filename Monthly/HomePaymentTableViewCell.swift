//
//  HomePaymentTableViewCell.swift
//  Monthly
//
//  Created by Kobe McKee on 9/26/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit

class HomePaymentTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
