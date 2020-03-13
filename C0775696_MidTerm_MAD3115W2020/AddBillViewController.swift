//
//  AddBillViewController.swift
//  C0775696_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-12.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class AddBillViewController: UIViewController, UITextFieldDelegate {
    var customer: Customer?
    
    @IBOutlet weak var segmentBillTypeVar: UISegmentedControl!
    
    @IBOutlet weak var txtBillID: UITextField!
    @IBOutlet weak var txtBillDate: UITextField!
    var datePicker: UIDatePicker!
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
        txtBillDate.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickUpDate(self.txtBillDate)
    }
    
    
    func pickUpDate(_ textField: UITextField)
    {
      //Date Picker
      self.datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
      self.datePicker.backgroundColor = UIColor.white
      self.datePicker.datePickerMode = UIDatePicker.Mode.date
      textField.inputView = self.datePicker
       
      //Toolbar
      let toolBar = UIToolbar()
      toolBar.barStyle = .default
      toolBar.isTranslucent = true
      toolBar.tintColor = .red
      toolBar.sizeToFit()
       
      //Adding Button Toolbar
      let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(AddBillViewController.doneClick))
      let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
      let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(AddBillViewController.cancelClick))
      toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
      toolBar.isUserInteractionEnabled = true
      textField.inputAccessoryView = toolBar
    }
     
    //Button Done and Cancel
    @objc func doneClick()
    {
      let dateformatter1 = DateFormatter()
      dateformatter1.dateStyle = .medium
      dateformatter1.timeStyle = .none
      txtBillDate.text = dateformatter1.string(from: datePicker.date)
      txtBillDate.resignFirstResponder()
    }
     
    @objc func cancelClick()
    {
      txtBillDate.resignFirstResponder()
    }
    
    @IBAction func segmentbilltype(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0
        {
            txtBillID.isHidden = false
            txtBillDate.isHidden = false
            txtMobileManufacturer.isHidden = true
            txtMobileMinuteUsed.isHidden = true
            txtMobileNumber.isHidden = true
            txtMobileGBUsed.isHidden = true
            txtMobilePlan.isHidden = true
            txtInternetProviderName.isHidden = true
            txtInternetGBUsed.isHidden = true
            txtHydroAgency.isHidden = false
            txtHydroUnitConsumed.isHidden = false
        }
        else if sender.selectedSegmentIndex == 1
        
        {
             txtBillID.isHidden = false
             txtBillDate.isHidden = false
             txtMobileManufacturer.isHidden = true
             txtMobileMinuteUsed.isHidden = true
             txtMobileNumber.isHidden = true
             txtMobileGBUsed.isHidden = true
             txtMobilePlan.isHidden = true
             txtInternetProviderName.isHidden = false
             txtInternetGBUsed.isHidden = false
             txtHydroAgency.isHidden = true
             txtHydroUnitConsumed.isHidden = true
            
        }
        else if sender.selectedSegmentIndex == 2
        {
             txtBillID.isHidden = false
             txtBillDate.isHidden = false
             txtMobileManufacturer.isHidden = false
             txtMobileMinuteUsed.isHidden = false
             txtMobileNumber.isHidden = false
             txtMobileGBUsed.isHidden = false
             txtMobilePlan.isHidden = false
             txtInternetProviderName.isHidden = true
             txtInternetGBUsed.isHidden = true
             txtHydroAgency.isHidden = true
             txtHydroUnitConsumed.isHidden = true
        }
        
    }
    
    @IBAction func btnAddBill(_ sender: Any) {
        
        if segmentBillTypeVar.selectedSegmentIndex == 0
        {
            let addBillObj = Hydro(billID: txtBillID.text!, billDate: (txtBillDate.text?.toDate())!, billType: BillType.HYDRO, agencyName: txtHydroAgency.text!, unitConsumed: Int(txtHydroUnitConsumed.text!)!)
            customer?.addBill(bill: addBillObj, billID: txtBillID.text!)
        }
        else if segmentBillTypeVar.selectedSegmentIndex == 1
        {
            let addBillObj = Internet(billID: txtBillID.text!, billDate: (txtBillDate.text?.toDate())!, billType: BillType.INTERNET, providerName: txtInternetProviderName.text!, internetGBUsed: Double(txtInternetGBUsed.text!)!)
            
            customer?.addBill(bill:addBillObj, billID: txtBillID.text!)
        }
        else if segmentBillTypeVar.selectedSegmentIndex == 2
        
        {
            let addBillobj = Mobile(billID: txtBillID.text!, billDate: (txtBillDate.text?.toDate())!, billType: BillType.MOBILE, mobileManufacturerName: txtMobileManufacturer.text!, planName: txtMobilePlan.text!, mobileNumber: txtMobileNumber.text!, internetGBUsed: Double(txtMobileGBUsed.text!)!, minuteUsed: Int(txtMobileMinuteUsed.text!)!)
            
            customer?.addBill(bill: addBillobj, billID: txtBillID.text!)
        }
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let DetailedBillVC = sb.instantiateViewController(identifier: "DetailedBillVC") as DetailedBillViewController
        DetailedBillVC.customer = self.customer
        navigationController?.pushViewController(DetailedBillVC, animated: true)
        
        
        
        
        
        
    }
    
}
