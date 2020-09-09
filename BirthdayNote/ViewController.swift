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
        
        fetchData()
        
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "Name")
        UserDefaults.standard.set(birthTextField.text!, forKey: "Birthday")
        
        fetchData()
    }
    
    
    @IBAction func deleteTapped(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "Name")
        let storedBirth = UserDefaults.standard.object(forKey: "Birthday")
        
        if (storedName as? String) != nil {
            
            UserDefaults.standard.removeObject(forKey: "Name")
            nameLabel.text = "Name: "
        }
        
        if (storedBirth as? String) != nil {
            
            UserDefaults.standard.removeObject(forKey: "Birthday")
            birthLabel.text = "Birthday: "
        }
        
    }
    
    
    func fetchData() {
        
        nameLabel.text = UserDefaults.standard.string(forKey: "Name")
        birthLabel.text = UserDefaults.standard.string(forKey: "Birthday")
    }
}

