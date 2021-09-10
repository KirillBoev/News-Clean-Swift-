//
//  News.swift
//  News(Clean Swift)
//
//  Created by Kirill Boev on 09.09.2021.
//

struct News: Decodable {
    var title: String?
    var description: String?
    var urlToImage: String?
    var content: String?
    var publishedAt: String?
}
