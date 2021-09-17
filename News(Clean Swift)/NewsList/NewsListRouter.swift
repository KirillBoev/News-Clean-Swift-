//
//  NewsListRouter.swift
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

protocol NewsListRoutingLogic {
    func routeToDetailNews(indexOfNews: Int)
}

protocol NewsListDataPassing {
    var dataStore: NewsListDataStore? { get }
}

final class NewsListRouter: NSObject, NewsListRoutingLogic, NewsListDataPassing {
    
    weak var viewController: NewsListViewController?
    var dataStore: NewsListDataStore?
    
    // MARK: Routing
    
    func routeToDetailNews(indexOfNews: Int) {
        guard let news = dataStore?.news[indexOfNews] else { return }
        let pushedViewController = NewsDetailsAssembly.build(news: news)
        viewController?.navigationController?.pushViewController(pushedViewController, animated: true)
    }
}
