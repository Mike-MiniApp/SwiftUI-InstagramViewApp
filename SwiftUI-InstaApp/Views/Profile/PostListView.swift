//
//  PostListView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct PostListView: View {
    @State private var postArray = [Post(name: "1", image: "1", comment: "", userName: "", profileImage: ""),
    Post(name: "2", image: "2", comment: "", userName: "", profileImage: ""),
    Post(name: "3", image: "3", comment: "", userName: "", profileImage: ""),
    Post(name: "4", image: "4", comment: "", userName: "", profileImage: ""),
    Post(name: "5", image: "5", comment: "", userName: "", profileImage: ""),
    Post(name: "6", image: "6", comment: "", userName: "", profileImage: ""),
    Post(name: "7", image: "7", comment: "", userName: "", profileImage: ""),
    Post(name: "8", image: "8", comment: "", userName: "", profileImage: ""),
    Post(name: "9", image: "9", comment: "", userName: "", profileImage: ""),
    Post(name: "10", image: "10", comment: "", userName: "", profileImage: "")
    ]
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
