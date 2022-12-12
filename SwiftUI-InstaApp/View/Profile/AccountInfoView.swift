//
//  AccountInfoView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct AccountInfoView: View {
    @State private var userName = "ご飯ビースト"
    @State private var postCount = "6"
    @State private var followCount = "265"
    @State private var followerCount = "252"

    var body: some View {
        HStack {
            VStack {
               Image("gohan")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .clipShape(Circle())

                Text(userName)
                    .bold()
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
        }.padding()
    }
}

struct AccountInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AccountInfoView()
    }
}
