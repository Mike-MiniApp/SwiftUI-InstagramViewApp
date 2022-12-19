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
                        Image(systemName: "list.bullet")
                    }

                    Image(post.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.width,alignment: .center)
                        .clipShape(Rectangle())

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
                    }.padding(EdgeInsets(
                        top: 0,        // 上の余白
                        leading: 10,    // 左の余白
                        bottom: 5,     // 下の余白
                        trailing: 10    // 右の余白
                    ))
                    Text(post.comment)
                        .padding(EdgeInsets(
                            top: 0,        // 上の余白
                            leading: 10,    // 左の余白
                            bottom: 20,     // 下の余白
                            trailing: 10    // 右の余白
                        ))
                }
            }
    }
}

struct FollowPostListView_Previews: PreviewProvider {
    static var previews: some View {
        FollowPostListView()
    }
}
