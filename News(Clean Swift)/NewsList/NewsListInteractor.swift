//
//  NewsListInteractor.swift
//  News(Clean Swift)
//
//  Created by Kirill Boev on 09.09.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol NewsListBusinessLogic {
    func fetchNews(request: NewsList.FetchNews.Request)
}

protocol NewsListDataStore {
    var news: [News] { get }
}

class NewsListInteractor: NewsListBusinessLogic, NewsListDataStore {
    
    var presenter: NewsListPresentationLogic?
    var worker: NewsListWorkerLogic?
    var news: [News] = []
    
    // MARK: Do something
    
    func getDisplayedNews(from news: [News]) -> [NewsList.FetchNews.ViewModel.DisplayedNews] {
        
        var displayedNews: [NewsList.FetchNews.ViewModel.DisplayedNews] = []
        
        news.forEach { news in
            let title = news.name
            let imageData = fetchImage(from: news.imageUrl)
            
            let displayedNew = NewsList.FetchNews.ViewModel.DisplayedNews(
                title: title,
                imageData: imageData
            )
            
            displayedNews.append(displayedNew)
        }
        
        return displayedNews
    }
    
    private func fetchImage(from imageURL: String?) -> Data? {
        ImageManager.getImageData(from: imageURL)
    }
    
    func fetchNews(request: NewsList.FetchNews.Request) {
        worker = NewsListWorker()
        worker?.fetchNews { news in
            self.news = news
            let response = NewsList.FetchNews.Response(news: news)
            self.presenter?.presentNews(response: response)
        }
    }
}

