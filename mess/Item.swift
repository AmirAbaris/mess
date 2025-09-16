//
//  Item.swift
//  mess
//
//  Created by Amir Abaris on 9/16/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
