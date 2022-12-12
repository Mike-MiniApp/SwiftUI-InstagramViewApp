//
//  MyIntroductionView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct MyIntroductionView: View {
    @State private var introText = "法政大学大学院 | M2 | ラーメン好き"
    var body: some View {
        VStack {
            Text(introText)
                .padding()
            HStack {
                Button {
                    // 何もしない
                } label: {
                    Text("プロフィールを編集")
                        .fontWeight(.medium)
                        .frame(width: 250, height: 48)
                            .foregroundColor(.black)
                            .background(Color.secondary.opacity(0.3))
                            .cornerRadius(15)
                }
                Button {
                    // 何もしない
                } label: {
                    Image(systemName: "person.fill.badge.plus")
                        .frame(width: 48,height: 48)
                        .foregroundColor(.black)
                        .background(Color.secondary.opacity(0.3))
                        .cornerRadius(15)
                }


            }
        }
    }
}

struct MyIntroductionView_Previews: PreviewProvider {
    static var previews: some View {
        MyIntroductionView()
    }
}
