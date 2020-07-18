//
//  FourthViewController.swift
//  SendString
//
//  Created by Roman Dod on 7/17/20.
//  Copyright © 2020 Roman Dod. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    @IBOutlet weak var oneMoreStepButton: UIButton!
    
    weak var veiwController: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       
        
        
    }
    @IBAction func pressedOneMoreStepButton(_ sender: UIButton) {
        
         veiwController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            
        let fifthController = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
                
        fifthController.string = "Password: \(veiwController.passwordField)\nUsername: \(veiwController.usernameField.text!)\nPhone number: \(veiwController.phoneNumberField.text!)"
        
        
        self.present(fifthController, animated: true, completion: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
