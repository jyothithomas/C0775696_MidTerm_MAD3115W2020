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
        
        if self.txtCustomerId.text != ""
        {
        let newCustomerId = txtCustomerId.text!
        }
        else
        {
            
        }
        let newCustomerFirstName = txtCustomerfirstName.text!
        let newCustomerLastName = txtCustomerlastName.text!
        let newCustomerEmailId = txtCustomerEmailid.text!
        
        
        DataSingelton.getInstance().addCustomer(customer: Customer(customerID: newCustomerId, firstName: newCustomerFirstName, lastName: newCustomerLastName, emailID: newCustomerEmailId))
    
    }
    
}
