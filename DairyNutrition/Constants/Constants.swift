//
//  Constants.swift
//  DairyNutrition
//
//  Created by Osiris on 2016-10-28.
//  Copyright © 2016 Osiris. All rights reserved.
//

import Foundation
import UIKit
import AlecrimCoreData

// the global persistent container
let persistentContainer = PersistentContainer(name: "DairyNutrition")


// Constants are here
let pinkColor = UIColor(hexString: "#FF1A50")
let grayColor = UIColor(hexString: "#C7C7CD")

let apiBaseURL: String = "https://calm-ocean-51507.herokuapp.com/api/"//https://calm-ocean-51507.herokuapp.com/api/
let foodApiBaseURL: String = "http://api.nal.usda.gov/ndb/"
let foodApiKey: String = "F1aPLDn8zX7K0TRlxboPlODCxW8FUZZdbCYTPWD7"


// Date Formatter
let formatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "MMM d, yyyy"
    return formatter
}()

func sumArray(array: [Double], quantity: [Int16]) -> Double {
    var sum = 0.0
    for (index, element) in array.enumerated() {
        sum += (element * Double(quantity[index]))
    }
    return sum
}

