//
//  NewsHome.swift
//  NewsApp
//
//  Created by Elizeu RS on 15/04/21.
//

import SwiftUI

struct NewsHome: View {
  
  @ObservedObject private var newsListVM = NewsListVM()
  
  init() {
    newsListVM.load()
  }
  
    var body: some View {
      VStack {
        NewsListHeader()
      }
    }
}

struct NewsHome_Previews: PreviewProvider {
    static var previews: some View {
        NewsHome()
    }
}