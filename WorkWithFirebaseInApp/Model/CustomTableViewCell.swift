//
//  CustomTableViewCell.swift
//  WorkWithFirebaseInApp
//
//  Created by Kinney Kare on 11/5/19.
//  Copyright © 2019 Kinney Kare. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var theDateLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var theTitleLabel: UILabel!
    

//We use didSet below because it is a "Property Observer" and will listen for any changes in this case (when coWorkerDetails = coWorkerDetails) it will update the three UILabels mentioned below.
    
    var coWorkerDetails: OurData? {
        didSet{
            if let coWorkerDetails = coWorkerDetails {
                self.theDateLabel.text = coWorkerDetails.date.dateToString(dateFormat: "MMMM dd, YYYY")
                self.nameLabel.text = coWorkerDetails.fullName
                self.theTitleLabel.text = coWorkerDetails.title
            }
        }
    }
}
