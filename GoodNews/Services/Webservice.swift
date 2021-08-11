//
//  Webservice.swift
//  GoodNews
//
//  Created by Novi Gunawan on 10/08/21.
//

import Foundation

class Webservice {
    //Urlnya url top headlines di API
    func getArticles(url: URL, completion: @escaping ([Articles]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            //MARK: if there's an error, it will print error and completion will instruct to do nothing after that.
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)

                if let articleList = articleList {
                    completion(articleList.articles)
                }
//                print(articleList!.articles)
//                print(data)
                
            }
        }.resume()
    }
}
