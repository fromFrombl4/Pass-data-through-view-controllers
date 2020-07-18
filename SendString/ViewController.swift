//
//  ViewController.swift
//  SendString
//
//  Created by Roman Dod on 7/16/20.
//  Copyright © 2020 Roman Dod. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var pressButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        usernameField.delegate = self
        phoneNumberField.delegate = self
        passwordField.delegate = self
        
        
        
    }

    @IBAction func PressedButton(_ sender: UIButton) {
        
        let secondController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
                
        
//        let fifthController = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        
//        fifthController.string = "Password: \(passwordField)\nUsername: \(usernameField.text!)\nPhone number: \(phoneNumberField.text!)"
        

        
        self.present(secondController, animated: true, completion: nil)
        
        
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        phoneNumberField.resignFirstResponder()
    }
    
}


extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}

