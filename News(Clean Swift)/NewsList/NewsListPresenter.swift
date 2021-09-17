//
//  NewsListPresenter.swift
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

protocol NewsListPresentationLogic {
    func presentNews(response: NewsList.FetchNews.Response)
}

final class NewsListPresenter: NewsListPresentationLogic {
    
    weak var viewController: NewsListDisplayLogic?
    var interactor: NewsListInteractor?
    
    // MARK: Do something
    
    func presentNews(response: NewsList.FetchNews.Response) {
        interactor = NewsListInteractor()
        guard let displayedNews = interactor?.getDisplayedNews(from: response.news) else { return }
        let viewModel = NewsList.FetchNews.ViewModel(displayedNews: displayedNews)
        viewController?.displayNews(viewModel: viewModel)
    }
}
