//
//  HomeView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
         StoryView()
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                            // 何もしない
                        } label: {
                            Image(systemName: "plus.app")
                                .foregroundColor(.black)
                        }
                        Button {
                            // 何もしない
                        } label: {
                            Image(systemName: "heart")
                                .foregroundColor(.black)
                        }
                        Button {
                            // 何もしない
                        } label: {
                            Image(systemName: "bubble.left.circle")
                                .foregroundColor(.black)
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            // なにもしない
                        } label: {
                            Text("Instagram")
                                .font(.title)
                                .foregroundColor(.black)
                                .bold()
                        }

                    }
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
