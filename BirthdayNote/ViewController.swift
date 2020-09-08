//
//  ViewController.swift
//  BirthdayNote
//
//  Created by Jamie on 2020/09/09.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "Name")
        UserDefaults.standard.set(birthTextField.text!, forKey: "Birthday")
        
        fetchData()
    }
    
    func fetchData() {
        
        nameLabel.text = UserDefaults.standard.string(forKey: "Name")
        birthLabel.text = UserDefaults.standard.string(forKey: "Birthday")
    }
}

