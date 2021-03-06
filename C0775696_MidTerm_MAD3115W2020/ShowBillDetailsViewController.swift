//
//  ShowBillDetailsViewController.swift
//  C0775696_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ShowBillDetailsViewController: UIViewController {
    var customer : Customer?
    @IBOutlet weak var lblCustomerDetails: UILabel!
    
    @IBOutlet weak var lblFullName: UILabel!
    @IBOutlet weak var lblCustEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showSelectedCustomerDetails()
    }
    
    @IBAction func btnViewBills(_ sender: Any) {
        if customer?.bills.count != 0
        {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let DetailedBillVC = sb.instantiateViewController(identifier: "DetailedBillVC") as DetailedBillViewController
        DetailedBillVC.customer = self.customer
        navigationController?.pushViewController(DetailedBillVC, animated: true)
        }
        else
        {
            showAlertMessage(message: "This customer has no bills")
        }
        
        
    }
    
    func showSelectedCustomerDetails()
    {
        guard let customerID = self.customer?.customerID else {
            return
        }
        guard let customerName = self.customer?.fullName else {
            return
        }
        guard let customerEmail = self.customer?.emailID else {
            return
        }
        
        lblCustomerDetails.text = "ID : \(customerID)"
        lblFullName.text = "Name : \(customerName)"
        lblCustEmail.text = "Email ID : \(customerEmail)"
        
    }
    func showAlertMessage(message: String)
    {
        let alert = UIAlertController(title: "Sorry", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
        
    }
    
    
    

}
