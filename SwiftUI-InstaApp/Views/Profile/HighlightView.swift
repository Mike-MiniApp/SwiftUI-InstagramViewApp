//
//  HighlightView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct HighlightView: View {
    // MARK: Variables
    @State private var highLightArray = [Story(name: "1", image: "1"),Story(name: "2", image: "2"),Story(name: "3", image: "3")]

    // MARK: View
    var body: some View {
        ScrollView(.horizontal) {
            HStack() {
                ForEach(highLightArray) { story in
                    VStack(spacing: 0) {
                        ZStack {
                            Image(story.image)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 70,height: 70)
                        }
                        Text(story.name)
                    }
                }
            }
        }.padding()
    }
}

struct HighlightView_Previews: PreviewProvider {
    static var previews: some View {
        HighlightView()
    }
}
