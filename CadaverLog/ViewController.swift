//
//  ViewController.swift
//  CadaverLog
//
//  Created by Dave on 1/11/17.
//  Copyright © 2017 Dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedCornerButton.layer.cornerRadius = 4
        roundedCornerButton.layer.borderWidth = 0.8
        roundedCornerButton.layer.borderColor = UIColor.white.cgColor
    }

    
    // variables for email and password text fields
    
    @IBOutlet private weak var roundedCornerButton: UIButton!
    @IBOutlet private weak var loginEmail: UITextField!
    @IBOutlet private weak var loginPassword: UITextField!
    
    
    @IBAction func signIn(_ sender: UIButton) {
        // do shit when the button is pressed
        
        // hide keyboard when Sign In is pressed
        self.loginPassword.resignFirstResponder()
        self.loginPassword.resignFirstResponder()

    }
    
    
    // built in method that tracks if the screen has been touched yet
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // self.view is the entire screen so touching anywhere drops
        // first responder status (removes keyboard)
        
        self.view.endEditing(true)
    }
    
    
    
}

