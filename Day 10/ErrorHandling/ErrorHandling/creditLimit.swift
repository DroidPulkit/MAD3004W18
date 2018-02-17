//
//  creditLimit.swift
//  ErrorHandling
//
//  Created by Pulkit Kumar on 2018-02-09.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

enum limitIncreaseError: Error {
    case reqStatus
    case insuffucientBalance(balanceNeeded: Double)
    case noSavingAccount
    case ineligible
}

struct requestsFromAccount {
    var type: String
    var balance: Double
    var reqStatus: String
}
