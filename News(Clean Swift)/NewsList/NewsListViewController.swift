//
//  NewsListViewController.swift
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

protocol NewsListDisplayLogic: class {
    func displayNews(viewModel: NewsList.FetchNews.ViewModel)
}

final class NewsListViewController: UIViewController {
    
    private let tableView = UITableView()
    
    var interactor: NewsListBusinessLogic?
    var router: NewsListRoutingLogic?
    
    private var news: [NewsList.FetchNews.ViewModel.DisplayedNews] = []
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "News"
        getNews()
        setupTableView()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    // MARK: Do something
    
    func getNews() {
        let request = NewsList.FetchNews.Request()
        interactor?.fetchNews(request: request)
    }
    
    func setupTableView(){
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension NewsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let new = news[indexPath.row]
        cell.textLabel?.text = new.title
        cell.imageView?.image = UIImage(data: new.imageData!)
        return cell
    }
}

extension NewsListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        router?.routeToDetailNews(indexOfNews: indexPath.row)
    }
}

extension NewsListViewController: NewsListDisplayLogic {
    
    func displayNews(viewModel: NewsList.FetchNews.ViewModel) {
        news = viewModel.displayedNews
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
