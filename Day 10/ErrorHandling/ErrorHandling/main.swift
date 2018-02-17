//
//  main.swift
//  ErrorHandling
//
//  Created by Pulkit Kumar on 2018-02-09.
//  Copyright © 2018 pulkitkumar. All rights reserved.
//

import Foundation

//throw limitIncreaseError.ineligible

//var obj1 = RequestLimitIncreased()
//try obj1.increaseLimit(accountNo: "S1100")

var processRequest = RequestLimitIncreased()

//Check error individually
do {
    try processRequest.increaseLimit(accountNo: "S1100")
} catch limitIncreaseError.insuffucientBalance {
    print("You don't have sufficient balance")
} catch limitIncreaseError.ineligible {
    print("You don't have account with us")
} catch limitIncreaseError.noSavingAccount {
    print("Limit increase is only available to Saving account")
} catch {
    print("Unexpected Error")
}

//Check error in group
do {
    try processRequest.increaseLimit(accountNo: "S1100")
} catch is limitIncreaseError {
    print("Something wrong with you account")
}
