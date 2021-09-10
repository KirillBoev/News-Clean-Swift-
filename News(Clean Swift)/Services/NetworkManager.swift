//
//  NetworkManager.swift
//  News(Clean Swift)
//
//  Created by Kirill Boev on 09.09.2021.
//

import Foundation


class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let newsURL = "https://newsapi.org/v2/top-headlines?country=us&apiKey=aaedc2be589441dc8cc89d980c6db572"
    
    func fetchData(completion: @escaping (_ news: [News])->()) {
        guard let url = URL(string: newsURL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let news = try decoder.decode([News].self, from: data)
                completion(news)
            } catch let error {
                print("Error serialization json", error)
            }
            
        }.resume()
    }
}
