//
//  NewsDetailsPresenter.swift
//  News(Clean Swift)
//
//  Created by Kirill Boev on 06.09.2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol NewsDetailsPresentationLogic {
    func presentDetails(response: NewsDetails.ShowDetails.Response)
}

class NewsDetailsPresenter: NewsDetailsPresentationLogic {
    
    weak var viewController: NewsDetailsDisplayLogic?
    var worker: NewsDetailsWorker?
    
    // MARK: Do something
    
    func presentDetails(response: NewsDetails.ShowDetails.Response) {
        worker = NewsDetailsWorker()
        
//        let numberOfLessons = "Number of lesson: \(response.news.numberOfLessons ?? 0)"
//        let numberOfTests = "Number of tests: \(response.news.numberOfTests ?? 0)"
//        let imageData = worker?.fetchImage(from: response.news.imageUrl)
//        let displayedDetails = NewsDetails.ShowDetails.ViewModel.DisplayedDetails
//        let viewModel = NewsDetails.ShowDetails.ViewModel(displayedDetails: displayedDetails)
//        viewController?.displayNews(viewModel: viewModel)
    }
}
