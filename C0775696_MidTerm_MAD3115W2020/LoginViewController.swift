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
    @IBOutlet weak var imgLogin: UIImageView!
    
    @IBOutlet weak var signInPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //imgLogin.image = UIImage(named: "img2")
        getRememberMeValues()
        
    }
    private func getRememberMeValues()
    {
        let userDefault = UserDefaults.standard
        
        if let userName = userDefault.string(forKey: "userEmail")
        {
            signInUsernameField.text = userName
            
            if let pwd = userDefault.string(forKey: "userPassword")
            {
                signInPassword.text = pwd
            }
        }
    }
    @IBAction func btnSignin(_ sender: UIButton) {
        
        //self.showSpinner(onView: self.view)
                
        if self.signInUsernameField.text == "jyothi05@mail.com" && self.signInPassword.text == "jyothi05"
        {
            if signInUsernameField.text?.emailValid() == true
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
                showAlertMessage(message: "Invalid UserName")
            }
            
        }
            
        else
        {
            if self.signInUsernameField.text == ""
            {
                showAlertMessage(message: "Enter UserName")
            }
            else if self.signInPassword.text == ""
            {
                showAlertMessage(message: "enter Password")
            }
            else
            {
            showAlertMessage(message: "Try again, User Email / Password Invalid")
            }
        }
            
        
        //self.removeSpinner()
        
            
}
    
    func showAlertMessage(message: String)
    {
        let alert = UIAlertController(title: "Sorry", message: message, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
    
    
    @IBAction func unWindLogoutFromAnyScreen(storyboardSegue: UIStoryboardSegue)
    {
        print("Logout")
        //let s = storyboardSegue.source as! CustomerListTableViewController
    }
}
