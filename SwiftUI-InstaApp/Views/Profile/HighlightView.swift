//
//  HighlightView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct HighlightView: View {
    @State private var highLightArray = [Story(name: "1", image: "1"),Story(name: "2", image: "2"),Story(name: "3", image: "3")]
    var body: some View {
        ScrollView(.horizontal) {
            HStack() {
                ForEach(highLightArray) { story in
                    VStack(spacing: 0) {
                        ZStack {
                            Image(story.image)
                                .resizable()
                                .border(.white,width: 5)
                                .clipShape(Circle())
                        }
                        Text(story.name)
                    }
                }
            }
        }
    }
}

struct HighlightView_Previews: PreviewProvider {
    static var previews: some View {
        HighlightView()
    }
}
