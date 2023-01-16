//
//  String.swift
//  EstartaTask
//
//  Created by Sawsan Alkhdair on 16/01/2023.
//

import Foundation

extension String {
    func toFormattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "y-MM-dd H:mm:ss.SSSSSS"
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.locale = Locale.current
        if let date = dateFormatter.date(from: self) {
            dateFormatter.dateFormat = "y-MM-dd"
            let str = dateFormatter.string(from: date)
            return str;
        }
        return ""
    }
    
}
