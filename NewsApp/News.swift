//
//  News.swift
//  NewsApp
//
//  Created by Elizeu RS on 14/04/21.
//

import Foundation

struct News: Decodable {
  let author: String?
  let title: String?
  let description: String?
  let urlToImage: String?
  let url: String
}

struct NewsEnvelope: Decodable {
  let status: String
  let totalResults: Int
  let articles: [News]
}
