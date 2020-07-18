//
//  FifthViewController.swift
//  SendString
//
//  Created by Roman Dod on 7/17/20.
//  Copyright © 2020 Roman Dod. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var showInfoTextView: UITextView!
    
    var string = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        printLabel.text = self.string
        
        
//        let viewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
//        showInfoTextView.text = self.string
        
//        showInfoTextView.text = "User name: \()"
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
