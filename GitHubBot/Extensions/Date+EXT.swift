//
//  Date+EXt.swift
//  GHFollowers
//
//  Created by Mohamed Atallah on 11/03/2023.
//

import Foundation


extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
    
}
