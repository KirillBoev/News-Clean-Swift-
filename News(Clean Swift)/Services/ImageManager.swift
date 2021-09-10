//
//  ImageManager.swift
//  News(Clean Swift)
//
//  Created by Kirill Boev on 09.09.2021.
//

import Foundation

class ImageManager {
    
    static let shared = ImageManager()
    
    func getImageData(from imageURL: String?) -> Data? {
        guard let stringURL = imageURL else { return nil }
        guard let imageURL = URL(string: stringURL) else { return nil }
        guard let imageData = try? Data(contentsOf: imageURL) else { return nil }
        return imageData
    }
}
