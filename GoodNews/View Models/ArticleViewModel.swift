//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Novi Gunawan on 11/08/21.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Articles]
}

extension ArticleListViewModel {
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Articles
}


extension ArticleViewModel {
    
    //Assign article from model to article in view model
    init(_ article: Articles) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String {
        return self.article.title ?? "no title"
    }
    
    var description: String {
        return self.article.description ?? "no description"
    }
}
