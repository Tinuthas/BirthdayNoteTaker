//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Marcus Vinicius Galdino Medeiros on 02/12/19.
//  Copyright © 2019 Marcus Vinicius Galdino Medeiros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setvaluesLabel()
    }

    @IBAction func saveClicked(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
//        UserDefaults.standard.synchronize()
        
       setvaluesLabel()
    }
    
    func setvaluesLabel(){
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
        //nameLabel.text = "Name: \(storedName as! String)"
        //birthdayLabel.text = "Birthday: \(storedBirthday as! String)"
        
    }
    
}

