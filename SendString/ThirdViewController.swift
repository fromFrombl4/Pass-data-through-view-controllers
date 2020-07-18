//
//  ThirdViewController.swift
//  SendString
//
//  Created by Roman Dod on 7/17/20.
//  Copyright © 2020 Roman Dod. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var nexButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func pressedNextButton(_ sender: UIButton) {
        
        let fourthController = self.storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        
        self.present(fourthController, animated: true, completion: nil)
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
