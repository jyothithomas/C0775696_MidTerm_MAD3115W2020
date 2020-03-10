//
//  ShowBillDetailsViewController.swift
//  C0775696_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController {
    @IBOutlet weak var lblCustomerDetails: UILabel!
    
    @IBOutlet weak var lblFullName: UILabel!
    @IBOutlet weak var lblCustEmail: UILabel!
 
    var customers: Customer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCustomerDetails.text = customers?.customerID
        lblFullName.text = customers?.fullName
        lblCustEmail.text = customers?.emailID
    }
    @IBAction func btnViewBills(_ sender: Any) {
        
        
        
    }
    
    
    

}
