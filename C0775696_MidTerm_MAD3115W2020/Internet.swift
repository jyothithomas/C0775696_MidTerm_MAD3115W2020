//
//  Internet.swift
//  C0775696_MidTerm_MAD3115W2020
//
//  Created by MacStudent on 2020-03-10.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Internet: Bill
{
var providerName: String
var internetGBUsed: Double
var ratePerGB: Double = 7.5

    init(billID: String, billDate: Date, billType: BillType, providerName: String, internetGBUsed: Double)
    {
    self.providerName = providerName
    self.internetGBUsed = internetGBUsed
    super.init(billID: billID, billDate: billDate, billType: billType)
        self.billAmount = calculateTotalBill()
    }

    override func calculateTotalBill() -> Double
    {
    self.billAmount = internetGBUsed*ratePerGB
        return billAmount
    }
}
