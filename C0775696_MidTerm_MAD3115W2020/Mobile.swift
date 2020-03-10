//
//  Mobile.swift
//  C0775696_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Mobile: Bill
{
    var mobileManufacturerName: String
    var planName: String
    var mobileNumber: String
    var internetGBUsed: Double
    var minuteUsed: Int
    var ratePerGB: Double = 7.5
    var ratePerMinute: Double = 0.50
    
    
    init(billID: String, billDate: Date, billType: BillType, mobileManufacturerName: String, planName: String, mobileNumber: String, internetGBUsed: Double, minuteUsed: Int) {
        self.mobileManufacturerName=mobileManufacturerName
        self.planName=planName
        self.mobileNumber=mobileNumber
        self.internetGBUsed=internetGBUsed
        self.minuteUsed=minuteUsed
        super.init(billID: billID, billDate: billDate, billType: billType)
    }
    
    override func calculateTotalBill()
    {
        self.billAmount = internetGBUsed*ratePerGB + Double(minuteUsed)*ratePerMinute
    }
}
