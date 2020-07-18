//
//  SecondViewController.swift
//  SendString
//
//  Created by Roman Dod on 7/17/20.
//  Copyright © 2020 Roman Dod. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressedGoButton(_ sender: UIButton) {
        
        let thirdController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        
        self.present(thirdController, animated: true, completion: nil)
        
        
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
