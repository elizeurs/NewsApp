//
//  NewsArticleWebView.swift
//  NewsApp
//
//  Created by Elizeu RS on 15/04/21.
//

import SwiftUI

struct NewsArticleWebView: View {
  var newsUrl: String
  
  var body: some View {
    SwiftuIWebView(urlString: newsUrl)
      .padding(.top, 20)
  }
}
