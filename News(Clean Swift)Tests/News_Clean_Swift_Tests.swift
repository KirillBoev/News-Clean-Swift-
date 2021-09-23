//
//  News_Clean_Swift_Tests.swift
//  News(Clean Swift)Tests
//
//  Created by Kirill Boev on 23.09.2021.
//

import XCTest
@testable import News_Clean_Swift_

class NewsListInteractorTests: XCTestCase {

    override func setUpWithError() throws {
        super.setUp()
    }

    override func tearDownWithError() throws {
        super.tearDown()
    }
    
    func testDataIsNotEmpty() {
        let sut = NewsListInteractor()
        sut.news = []
        let news = sut.news
        sut.getDisplayedNews(from: news)
        XCTAssertEqual(sut.dataIsEmpty, true)
    }
}
