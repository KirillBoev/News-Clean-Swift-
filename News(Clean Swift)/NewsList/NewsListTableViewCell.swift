//
//  NewsListTableViewCell.swift
//  News(Clean Swift)
//
//  Created by Kirill Boev on 10.09.2021.
//

import UIKit

class NewsListTableViewCell: UITableViewCell {
    func configure(with news: NewsList.FetchNews.ViewModel.DisplayedNews) {
            textLabel?.text = news.title
            guard let imageData = news.imageData else { return }
            imageView?.image = UIImage(data: imageData)
    }
}
