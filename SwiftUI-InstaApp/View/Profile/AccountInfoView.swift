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
            }

            VStack {
                Text(postCount)
                Text("投稿")
            }
            .padding()
            VStack {
                Text(followerCount)
                Text("フォロワー")
            }
            .padding()
            VStack {
                Text(followCount)
                Text("フォロー中")
            }
        }.padding()
    }
}

struct AccountInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AccountInfoView()
    }
}
