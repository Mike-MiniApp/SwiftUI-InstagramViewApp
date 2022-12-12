//
//  PostListView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct PostListView: View {
    // MARK: - Variables
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

    var columns: [GridItem] = Array(repeating: .init(.flexible(),spacing: 10,alignment: .center), count: 3)

    @State private var selection = 0

    // MARK: - Views
    var body: some View {
        VStack {
            VStack(spacing: 0){
                Picker("画面切り替え", selection: $selection) {
                    Image(systemName: "square.grid.3x3.fill")

                    Image(systemName: "person.circle")
                }.pickerStyle(SegmentedPickerStyle()).padding()
            }
            ScrollView(.vertical) {
                LazyVGrid(columns: columns) {
                    ForEach(postArray) { post in
                        Color.white
                            .aspectRatio(1, contentMode: .fill)
                            .overlay(
                                Image(post.image)
                                    .resizable()
                                    .scaledToFill()
                            )
                            .clipped()
                    }
                }
            }
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
