//
//  AccountInfoView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct AccountInfoView: View {
    // MARK: Variables
    @State private var userName = "ご飯ビースト"
    @State private var postCount = "6"
    @State private var followCount = "265"
    @State private var followerCount = "252"
    @State private var introText = "法政大学大学院 | M2 | ラーメン好き"

    // MARK: View
    var body: some View {
        VStack {
            HStack {
                VStack {
                   Image("gohan")
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .clipShape(Circle())
                }

                VStack {
                    Text(postCount)
                    Text("投稿")
                        .font(.system(size: 12))
                }
                .padding()
                VStack {
                    Text(followerCount)
                    Text("フォロワー")
                        .font(.system(size: 12))
                }
                .padding()
                VStack {
                    Text(followCount)
                    Text("フォロー中")
                        .font(.system(size: 12))
                }
                .padding()
            }.padding(.top)
            VStack {
                HStack {
                        Text(userName)
                            .bold()
                        Spacer()
                }
                HStack {
                    Text(introText)
                        Spacer()
                }
            }.padding(.leading)

            HStack {
                Button {
                    // 何もしない
                } label: {
                    Text("プロフィールを編集")
                        .fontWeight(.medium)
                        .frame(width: 330, height: 40)
                            .foregroundColor(.black)
                            .background(Color.secondary.opacity(0.3))
                            .cornerRadius(15)
                }
                Button {
                    // 何もしない
                } label: {
                    Image(systemName: "person.fill.badge.plus")
                        .frame(width: 40,height: 40)
                        .foregroundColor(.black)
                        .background(Color.secondary.opacity(0.3))
                        .cornerRadius(15)
                }
            }
            }
        }
    }

struct AccountInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AccountInfoView()
    }
}
