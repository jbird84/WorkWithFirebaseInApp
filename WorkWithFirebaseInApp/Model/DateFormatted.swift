//
//  DateFormatted.swift
//  WorkWithFirebaseInApp
//
//  Created by Kinney Kare on 11/13/19.
//  Copyright © 2019 Kinney Kare. All rights reserved.
//

import UIKit

//Extension off Date that sets the date in the correct format and accurate date.

extension Date {
    
    func dateToString(dateFormat format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
}
