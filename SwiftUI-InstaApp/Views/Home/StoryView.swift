//
//  StoryView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/13.
//

import SwiftUI

struct StoryView: View {
    @State var storyArray = [Story(name: "ゴクウ", image: "ゴクウ"),
                             Story(name: "ベジータ", image: "ベジータ"),
                             Story(name: "ゴテン", image: "ゴテン"),
                             Story(name: "フリーザ", image: "フリーザ"),
                             Story(name: "セル", image: "セル")]

    var body: some View {
        ScrollView(.horizontal) {
            HStack() {
                VStack(spacing: 0) {
                    ZStack(alignment: .bottomTrailing) {
                        Image("gohan")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 80,height: 80)
                        Button {
                            // 何もしない
                        } label: {
                            Image(systemName: "plus.circle")
                        }

                    }
                    Text("ストーリーズ")
                        .font(.caption)
                }
                ForEach(storyArray) { story in
                    VStack(spacing: 0) {
                        ZStack {
                            Image(story.image)
                                .resizable()
                                .overlay(
                                                                // Instagramらしいグラデーション色に!!
                                                                Circle().stroke(LinearGradient(gradient: Gradient(colors: [.yellow, .red, .purple]), startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 5))
                                .clipShape(Circle())
                                .frame(width: 80,height: 80)
                        }
                        Text(story.name)
                            .font(.caption)
                    }
                }
            }
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
