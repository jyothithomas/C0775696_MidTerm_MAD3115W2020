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
        
        
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAddCustomer(_ sender: UIButton) {
        //txtCustomerId.text =
    
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
