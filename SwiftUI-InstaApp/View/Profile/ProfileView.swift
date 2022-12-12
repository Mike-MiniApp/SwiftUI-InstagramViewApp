//
//  ProfileView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            AccountInfoView()
            MyIntroductionView()
        }
        // TODO: 写真、ユーザ名

        // TODO: 自己紹介、プロフィール編集ボタン

        // TODO: 投稿リスト
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
