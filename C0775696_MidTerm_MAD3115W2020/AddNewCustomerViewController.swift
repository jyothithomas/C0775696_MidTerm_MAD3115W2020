//
//  AddNewCustomerViewController.swift
//  C0775696_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddNewCustomerViewController: UIViewController {

    @IBOutlet weak var txtCustomerId: UITextField!
    @IBOutlet weak var txtCustomerfirstName: UITextField!
    @IBOutlet weak var txtCustomerlastName: UITextField!
    @IBOutlet weak var txtCustomerEmailid: UITextField!
    var newCustomer:[Customer] = []
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnAddCustomer(_ sender: UIButton) {
        let newCustomerId = txtCustomerId.text ?? ""
        let newCustomerFirstName = txtCustomerfirstName.text ?? ""
        let newCustomerLastName = txtCustomerlastName.text ?? ""
        //guard case let txtCustomerEmailid.text?.emailValid() == true
        
        let newCustomerEmailId = txtCustomerEmailid.text ?? ""
        
        if txtCustomerId.text == ""
        {
            showAlertMessage(message: "Enter customer ID")
        }
        else if txtCustomerfirstName.text == ""
        {
            showAlertMessage(message: "Enter Customer First name ")
        }
        else if txtCustomerlastName.text == ""
        {
            showAlertMessage(message: "Enter Customer Last name")
        }
        else if txtCustomerEmailid.text == "" || txtCustomerEmailid.text?.emailValid() == false
        {
            showAlertMessage(message: "Enter Valid EmailID")
        }
        else
        {
        DataSingelton.getInstance().addCustomer(customer: Customer(customerID: newCustomerId, firstName: newCustomerFirstName, lastName: newCustomerLastName, emailID: newCustomerEmailId))
        }
        showMessage(message: "Customer added")
        
    }
    
    func showAlertMessage(message: String)
    {
        let alert = UIAlertController(title: "Sorry", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
        
    }
    func showMessage(message: String)
    {
        let alert = UIAlertController(title: "Done", message: message, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
    
}
