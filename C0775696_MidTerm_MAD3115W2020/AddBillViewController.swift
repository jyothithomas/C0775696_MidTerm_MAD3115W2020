//
//  AddBillViewController.swift
//  C0775696_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController {
    var customer: Customer?
    
    @IBOutlet weak var lblBillDate: UILabel!
    @IBOutlet weak var lblBillID: UILabel!
    @IBOutlet weak var lblInternetGBUsed: UILabel!
    @IBOutlet weak var lblInternetProvider: UILabel!
    
    @IBOutlet weak var lblMobileManufacturer: UILabel!
    
    @IBOutlet weak var lblMobilePlan: UILabel!
    
    @IBOutlet weak var lblMobileNumber: UILabel!
    
    @IBOutlet weak var lblMobileGBUsed: UILabel!
    
    @IBOutlet weak var lblMobileMinuteUsed: UILabel!
    
    @IBOutlet weak var lblHydroAgency: UILabel!
    
    @IBOutlet weak var lblHydroUnitConsumed: UILabel!
    
    @IBOutlet weak var txtBillID: UITextField!
    
    @IBOutlet weak var txtBillDate: UITextField!
    @IBOutlet weak var txtInternetProviderName: UITextField!
    
    @IBOutlet weak var txtInternetGBUsed: UITextField!
    
    @IBOutlet weak var txtMobileManufacturer: UITextField!
    
    @IBOutlet weak var txtMobilePlan: UITextField!
    @IBOutlet weak var txtMobileNumber: UITextField!
    @IBOutlet weak var txtMobileGBUsed: UITextField!
    
    @IBOutlet weak var txtMobileMinuteUsed: UITextField!
    
    @IBOutlet weak var txtHydroAgency: UITextField!
    
    @IBOutlet weak var txtHydroUnitConsumed: UITextField!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Add New Bill"
        //self.navigationItem.hidesBackButton = true
        
    }
    
    @IBAction func segmentbilltype(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0
        {
            
        }
        
    }
    
}
