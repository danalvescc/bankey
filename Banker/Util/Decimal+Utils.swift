//
//  DecimalUtil.swift
//  Banker
//
//  Created by Daniel  Alves Barreto on 24/11/22.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
