//
//  ViewController.swift
//  C0775696_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var switchState: UISwitch!
    @IBOutlet weak var signInUsernameField: UITextField!
    
    @IBOutlet weak var signInPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnSignin(_ sender: UIButton) {
        
        if self.signInUsernameField.text == "jyothi05" && self.signInPassword.text == "jyothi05"
        {
            let userDefault = UserDefaults.standard
            if switchState.isOn
            {
                
                userDefault.setValue(signInUsernameField.text, forKey: "userEmail")
                userDefault.set(signInPassword.text, forKey: "userPassword")
            }
            else
            {
                userDefault.removeObject(forKey: "userEmail")
                userDefault.removeObject(forKey: "userPassword")
            }
        }
        else
        {
            let alert = UIAlertController(title: "Error", message: "Try again, User Email / Password Invalid", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(okButton)
            
            self.present(alert, animated: true)
        }
            
}
}
