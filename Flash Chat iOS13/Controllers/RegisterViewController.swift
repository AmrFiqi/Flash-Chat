//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseCore

class RegisterViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    // MARK: - IBAction Method
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        //checkTextFields()
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    self.present(self.alertController(error: e), animated: true)
                }
                else {
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
    
    // MARK: - Class Methods
    
    func alertController (error: Error) -> UIAlertController {
        let dialogMessage = UIAlertController(title: "Attention", message: error.localizedDescription, preferredStyle: .alert)
        dialogMessage.addAction(UIAlertAction(title: "Ok", style: .cancel))
        return dialogMessage
    }
}
