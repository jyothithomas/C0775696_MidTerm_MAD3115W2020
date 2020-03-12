//
//  DetailedBillViewController.swift
//  C0775696_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class DetailedBillViewController: UIViewController {

    @IBOutlet weak var tblDetailedBillview: UITableView!
    var customer : Customer?
    
    var bills : [Bill] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bills = customer!.getAllbills()
        self.navigationItem.hidesBackButton = true
        self.navigationItem.title = "Customer Detailed Bills"

        // Do any additional setup after loading the view.
    }
}
extension DetailedBillViewController: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return bills.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailedBillcell")
        //let bill = bills[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // let b = bills[indexPath.row]
    }
    
}
