//
//  ImageItem.swift
//  ImageCategorizer
//
//  Created by Govind Nair on 1/5/25.
//

import Foundation
import SwiftData

@Model
class ImageItem {
    var filename: String
    var filePath: String
    var createdAt: Date
    
    init(filename: String, filePath: String, createAt: Date = .now) {
        self.filename = filename
        self.filePath = filePath
        self.createdAt = createAt
    }
}
