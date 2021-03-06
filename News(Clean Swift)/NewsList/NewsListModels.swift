//
//  NewsListModels.swift
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

enum NewsList {
    // MARK: Use cases
    
    enum FetchNews {
        struct Request {
        }
        
        struct Response {
            var news: [News]
        }
        
        struct ViewModel {
            struct DisplayedNews {
                var title: String?
                var imageData: Data?
            }
            
            var displayedNews: [DisplayedNews]
        }
    }
}
