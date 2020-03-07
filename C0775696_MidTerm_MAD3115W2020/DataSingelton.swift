//
//  DataSingelton.swift
//  C0775696_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class DataSingelton
{
    
    private static let datasingleton_instance = DataSingelton()
    private lazy var customerList: [String: Customer] = [:]

    private init(){}

    static func getInstance() -> DataSingelton
    {
        return datasingleton_instance
    }
    
    func addCustomer(customer: Customer)
    {
        self.customerList.updateValue(customer, forKey: customer.customerID)
    }
    func getAllCustomers() -> [Customer]{
        return Array(customerList.values)
    }
//    func getCustomerById(customerId: Int) -> Customer?
//    {
//    var flag = 0
//    for i in customerList
//      {
//         if customerId == i.customerId
//          {
//          flag = 1
//          loadData()
//             return i
//          }
//      }
//      if (flag == 0){ // Validating customer if exist otherwise nil and proper message is displayed
//        print("\n No Customer with this CustomerId \(customerId) exists")
//         return nil
//      }
//    }
    
    func loadData()
    {
        customerList.updateValue(Customer(customerID: "C01", firstName: "Jyothi", lastName: "Thomas", emailID: "jojamz123@gmail.com"), forKey: "C01")
        customerList.updateValue(Customer(customerID: "C02", firstName: "James", lastName: "Thomas", emailID: "jamz3@mail.com"), forKey: "C02")
        customerList.updateValue(Customer(customerID: "C03", firstName: "Raelyn", lastName: "James", emailID: "rae_lyn@gmail.com"), forKey: "C03")
        customerList.updateValue(Customer(customerID: "C04", firstName: "Anos", lastName: "Jomon", emailID: "annos@gmail.com"), forKey: "C04")
        customerList.updateValue(Customer(customerID: "C05", firstName: "Avani", lastName: "Patel", emailID: "avi_pt@gmail.com"), forKey: "C05")
    }
    
}


