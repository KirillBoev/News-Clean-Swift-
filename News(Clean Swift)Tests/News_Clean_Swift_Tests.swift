//
//  News_Clean_Swift_Tests.swift
//  News(Clean Swift)Tests
//
//  Created by Kirill Boev on 23.09.2021.
//

import XCTest
@testable import News_Clean_Swift_

class NewsListPresenterSpy: NewsListPresentationLogic {
    var isPresentNewsCalled = false
    var isPresentErrorCalled = false
    func presentNews(response: NewsList.FetchNews.Response) {
        isPresentNewsCalled = true
    }
    
    func presentError() {
        isPresentErrorCalled = true
    }
}

class NewsListInteractorTests: XCTestCase {
    
    private var sut: NewsListInteractor!
    private var presenter: NewsListPresenterSpy!

    override func setUp() {
        super.setUp()
        sut = NewsListInteractor()
        presenter = NewsListPresenterSpy()
        sut.presenter = presenter
    }
    
    func testDataIsEmpty() {
        sut.dataIsEmpty = true
        let request = NewsList.FetchNews.Request()
        sut.fetchNews(request: request)
        XCTAssertTrue(presenter.isPresentErrorCalled)
    }
    
    func testDataIsNotEmpty() {
        sut.dataIsEmpty = false
        let request = NewsList.FetchNews.Request()
        sut.fetchNews(request: request)
        XCTAssertFalse(presenter.isPresentNewsCalled)
    }
}
