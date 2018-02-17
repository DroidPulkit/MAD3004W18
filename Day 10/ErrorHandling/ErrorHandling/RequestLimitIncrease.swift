//
//  RequestLimitIncrease.swift
//  ErrorHandling
//
//  Created by Pulkit Kumar on 2018-02-09.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

class RequestLimitIncreased {
    var requestsReceived = [
        "S1100" : requestsFromAccount(type: "Saving", balance: 1234.09, reqStatus: "In Process"),
        "S1200" : requestsFromAccount(type: "Saving", balance: 5080.09, reqStatus: "In Process"),
        "S1300" : requestsFromAccount(type: "Chequing", balance: 10000.09, reqStatus: "In Process"),
        "S1400" : requestsFromAccount(type: "Saving", balance: 5400, reqStatus: "Approved")
    ]
    
    func increaseLimit(accountNo acno: String) throws {
        
        guard reqAcc.type == "Saving" else{
            throw limitIncreaseError.reqStatus
        }
        
        guard let reqAcc = requestsReceived[acno] else {
            throw limitIncreaseError.ineligible
        }
        guard reqAcc.type == "Saving" else{
            throw limitIncreaseError.noSavingAccount
        }
        
        guard reqAcc.balance >= 5000 else {
            throw
                limitIncreaseError.insuffucientBalance(balanceNeeded: 5000 - reqAcc.balance) 
        }
        
        var approvedRequest = reqAcc
        approvedRequest.reqStatus = "Approved"
        print("Your request is approved")
    }
}
