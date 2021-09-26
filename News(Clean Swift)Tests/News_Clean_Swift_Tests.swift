//
//  News_Clean_Swift_Tests.swift
//  News(Clean Swift)Tests
//
//  Created by Kirill Boev on 23.09.2021.
//

import XCTest
@testable import News_Clean_Swift_

class NewsListPresenterSpy: NewsListPresenter {
    var lastResult: Int?
    override func presentNews(response: NewsList.FetchNews.Response) {
        lastResult = 1
    }
    
    override func presentError() {
        lastResult = 0
    }
}

class NewsListInteractorTests: XCTestCase {
    
    private var sut: NewsListInteractor!
    private var presenter: NewsListPresenterSpy!

    override func setUp() {
        sut = NewsListInteractor()
        presenter = NewsListPresenterSpy()
        sut.presenter = presenter
    }

    override func tearDownWithError() throws {
        super.tearDown()
    }
    
    func testDataIsEmpty() {
        sut.dataIsEmpty = true
        let request = NewsList.FetchNews.Request()
        sut.fetchNews(request: request)
        XCTAssertEqual(presenter.lastResult, 0)
    }
}
