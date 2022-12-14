//
//  FollowPostListView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/14.
//

import SwiftUI

struct FollowPostListView: View {
    @State private var postArray = [Post(image: "1", comment: "綺麗な景色！", userName: "gohan", profileImage: "gohan"),Post(image: "ムキムキフリーザ", comment: "フルパワー疲れる", userName: "フリーザ", profileImage: "フリーザ"),Post(image: "イケメンセル", comment: "俺かっこよくね？", userName: "セル", profileImage: "セル"),Post(image: "家族", comment: "家族", userName: "ゴテン", profileImage: "ゴテン")]

    var body: some View {
        List {
            ForEach(postArray) { post in
                VStack(alignment: .leading) {
                    HStack {
                        Image(post.profileImage)
                            .resizable()
                            .aspectRatio( contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 50,height: 50)
                        Text(post.userName)
                            .bold()
                        Spacer()
                    }

                    Image(post.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 393)
                    HStack {
                        Button {
                            // 何もしない
                        } label: {
                            Image(systemName: "suit.heart")
                        }
                        Button {
                            // 何もしない
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        Button {
                            // 何もしない
                        } label: {
                            Image(systemName: "paperplane")
                        }
                        Spacer()
                    }.padding(.vertical)
                    
                    Text(post.comment)
                        .padding(.bottom)
                }
            }
        }.listStyle(.plain)// Listを横幅いっぱいに
    }
}

struct FollowPostListView_Previews: PreviewProvider {
    static var previews: some View {
        FollowPostListView()
    }
}
