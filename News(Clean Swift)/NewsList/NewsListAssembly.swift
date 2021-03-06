//
//  NewsListConfigurator.swift
//  News(Clean Swift)
//
//  Created by Kirill Boev on 09.09.2021.
//

import UIKit

final class NewsListAssembly {
    
    static func build() -> UIViewController {
        let viewController = NewsListViewController()
        let interactor = NewsListInteractor()
        let presenter = NewsListPresenter()
        let router = NewsListRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
        return viewController
    }
}
