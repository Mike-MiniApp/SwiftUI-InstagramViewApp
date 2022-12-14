//
//  PostListView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct PostListView: View {
    // MARK: - Variables
    @State private var postArray = [Post(image: "1", comment: "", userName: "", profileImage: ""),
    Post(image: "2", comment: "", userName: "", profileImage: ""),
    Post(image: "3", comment: "", userName: "", profileImage: ""),
    Post(image: "4", comment: "", userName: "", profileImage: ""),
    Post(image: "5", comment: "", userName: "", profileImage: ""),
    Post(image: "6", comment: "", userName: "", profileImage: ""),
    Post(image: "7", comment: "", userName: "", profileImage: ""),
    Post(image: "8", comment: "", userName: "", profileImage: ""),
    Post(image: "9", comment: "", userName: "", profileImage: ""),
    Post(image: "10", comment: "", userName: "", profileImage: "")
    ]

    var columns: [GridItem] = Array(repeating: .init(.flexible(),spacing: 2,alignment: .center), count: 3)

    @State private var selection = 0

    // MARK: - Views
    var body: some View {
        VStack {
            VStack(spacing: 0){
                Picker("画面切り替え", selection: $selection) {
                    Image(systemName: "square.grid.3x3.fill")
                    Image(systemName: "person.circle")
                }.pickerStyle(SegmentedPickerStyle())
                    .background(Color.white.opacity(0.3))
            }
            ScrollView(.vertical) {
                LazyVGrid(columns: columns,spacing: 2) {
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
                .padding(2)
            }
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}
