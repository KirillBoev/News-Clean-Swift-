//
//  NewsDetailsConfigurator.swift
//  News(Clean Swift)
//
//  Created by Kirill Boev on 09.09.2021.
//

import Foundation

class NewsDetailsConfigurator {
    
    static func counfure(with view: NewsDetailsViewController) {
        let viewController = view
        let interactor = NewsDetailsInteractor()
        let presenter = NewsDetailsPresenter()
        let router = NewsDetailsRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}
