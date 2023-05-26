//
//  CatModel.swift
//  TabmanTest
//
//  Created by wooseob on 2023/05/26.
//

import Foundation

struct NewsModel: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let author: String?
    let title: String
    let description: String?
    let publishedAt: Date
    let content: String?
    let url: String?
}

