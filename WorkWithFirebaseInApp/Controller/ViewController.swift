//
//  ViewController.swift
//  WorkWithFirebaseInApp
//
//  Created by Kinney Kare on 11/5/19.
//  Copyright © 2019 Kinney Kare. All rights reserved.
//

import UIKit
import FirebaseFirestore

class ViewController: UIViewController {
    
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    
    let save = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveToFirebase))
    let edit = UIBarButtonItem(title: "SaveEdit", style: .plain, target: self, action: #selector(editFirebaseData))
    var ref: DocumentReference? = nil
    var db: Firestore!
    var coWorkers: OurData?
    
    override func viewDidAppear(_ animated: Bool) {
        
        if coWorkers != nil {
            navigationItem.rightBarButtonItem = edit
            self.fullNameTextField.text = coWorkers!.fullName
            self.titleTextField.text = coWorkers!.title
    }
        navigationItem.rightBarButtonItem = save
        
    }

    @objc func saveToFirebase() {
    
        db.collection("theData").document("AppInfo").setData([
            "date": nil!,
            "fullName": fullNameTextField.text ?? "No Name Provided",
            "title": titleTextField.text ?? "No Title Provided"
        ]) { err in
            if let err = err {
                print("Error writing document: \(err) ")
            } else {
                print("Documents were successfully written to Firebase!")
            }
        }
        
    }

    @objc func editFirebaseData() {
        
    }
    
}

