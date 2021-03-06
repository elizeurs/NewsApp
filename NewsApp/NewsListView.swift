//
//  NewsListView.swift
//  NewsApp
//
//  Created by Elizeu RS on 15/04/21.
//

import SwiftUI

struct NewsListView: View {
  
  let newsCollection: [NewsViewModel]
  let imageData: [String: Data]
  
    var body: some View {
      List(self.newsCollection, id: \.url) {
        news in
        NewsCell(news: news, image: Image(uiImage: self.imageData[news.urlToImage] == nil ? UIImage(systemName: "doc.append")! : UIImage(data: self.imageData[news.urlToImage]!)!))
      }
    }
}

//struct NewsListView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsListView()
//    }
//}
