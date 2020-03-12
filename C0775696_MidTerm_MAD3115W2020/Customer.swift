//
//  Customer.swift
//  C0775696_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Customer
{
    
    var customerID: String
    var firstName:String
    var lastName:String
    var fullName:String
    {
      return "\(firstName) \(lastName)"
    }
    var emailID:String
    lazy var bills = [String : Bill]()
    var totalBillToPay : Double = 0.0
     
    init(customerID:String, firstName:String, lastName:String, emailID:String) {
      self.customerID=customerID
      self.firstName=firstName
      self.lastName=lastName
      self.emailID=emailID//.isValidEmail(email: emailID)
    }
    
    func addBill(bill: Bill, billID: String)
    {
        bills.updateValue(bill, forKey: billID)
    }
    
    func removeBill(bill: Bill, billID: String)
    {
        bills.removeValue(forKey: billID)
        print("Bill removed with ID \(billID)")
    }
    
    func getAllbills() -> [Bill]
    {
        var allBills = [Bill] ()
        for bill in bills {
            allBills.append(bill.value)
        }
        return allBills
        
    }
    
    func calculateTotalBill() -> Double {
        var dummyTotalBillToPay = 0.0
        for i in bills{
          dummyTotalBillToPay += i.value.billAmount
        }
        return dummyTotalBillToPay
    }
}
