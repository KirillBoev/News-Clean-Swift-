//
//  News.swift
//  News(Clean Swift)
//
//  Created by Kirill Boev on 09.09.2021.
//

struct Course: Decodable {
    var title: String?
    var description: String?
    var urlToImage: String?
    var content: String?
    var publishedAt: String?
}

struct News: Decodable {
    let name: String?
    let link: String?
    let imageUrl: String?
    let numberOfLessons: Int?
    let numberOfTests: Int?
}
