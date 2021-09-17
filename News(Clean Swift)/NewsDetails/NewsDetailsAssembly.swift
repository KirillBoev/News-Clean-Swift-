//
//  NewsDetailsConfigurator.swift
//  News(Clean Swift)
//
//  Created by Kirill Boev on 09.09.2021.
//

import UIKit

final class NewsDetailsAssembly {
    
    static func build(news: News) -> UIViewController {
        let viewController = NewsDetailsViewController()
        let interactor = NewsDetailsInteractor(news: news)
        let presenter = NewsDetailsPresenter()
        let router = NewsDetailsRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
        return viewController
    }
}
