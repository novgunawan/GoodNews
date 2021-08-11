//
//  Articles.swift
//  GoodNews
//
//  Created by Novi Gunawan on 11/08/21.
//

import Foundation
//Codable juga bisa, tapi kita ga bakal ngirim data balik ke server jd gpp

struct ArticleList: Decodable {
    let articles: [Articles]
}
struct Articles: Decodable {
    let title: String?
    let description: String?
}


