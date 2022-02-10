//
//  ViewController.swift
//  Goryachev_homework_14.7
//
//  Created by Alex Goriachev on 10.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameField.text = Persistance.shared.firstName
        lastNameField.text = Persistance.shared.lastName
    }

    @IBAction func saveAction(_ sender: Any) {
        Persistance.shared.firstName = firstNameField.text
        Persistance.shared.lastName = lastNameField.text
    }
    
}

