//
//  Item.swift
//  food-picker
//
//  Created by 孫定宇 on 2024/7/11.
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
