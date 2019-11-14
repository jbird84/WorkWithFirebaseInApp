//
//  Data.swift
//  WorkWithFirebaseInApp
//
//  Created by Kinney Kare on 11/7/19.
//  Copyright © 2019 Kinney Kare. All rights reserved.
//

import UIKit
import Firebase


struct OurData {
    
    var fullName: String
    var title: String
    var date: Date

    var dictionary: [String: Any] {
        return [
            "date": date,
            "fullName": fullName,
            "title": title
        ]
    }
    
}
