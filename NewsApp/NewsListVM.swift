//
//  NewsListVM.swift
//  NewsApp
//
//  Created by Elizeu RS on 14/04/21.
//

import Foundation

class NewsListVM: ObservableObject {
  @Published var news = [NewsViewModel]()
  @Published var imageData = [String: Data]()
  
  func load() {
    getNews()
  }
  
  func getNews() {
    let networkManager = NetworkManager()
    networkManager.getNews { (newsArticles) in
      guard let news = newsArticles else { return }
      
      let newsVM = news.map(NewsViewModel.init)
      self.getImages(for: newsVM)
      DispatchQueue.main.async {
        self.news = newsVM
      }
    }
  }
  
  private func getImages(for news: [NewsViewModel]) {
    let nm = NetworkManager()
    news.forEach { n in
      guard !n.urlToImage.isEmpty else { return }
      
      nm.getImage(urlString: n.urlToImage) { (data) in
        guard  let data = data else { return }
        
        DispatchQueue.main.async {
          self.imageData[n.urlToImage] = data
        }
      }
    }
  }
}
