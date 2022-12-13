//
//  ProfileView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct ProfileView: View {
    // MARK: - Variables
    @State private var subUserName = "mike_3844"

    // MARK: - View
    var body: some View {
        NavigationStack {
            VStack {
                AccountInfoView()
                HighlightView()
                PostListView()
            }
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
                        Image(systemName: "menucard")
                            .foregroundColor(.black)
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        // 何もしない
                    } label: {
                        Text(subUserName)
                            .foregroundColor(.black)
                            .font(.title)
                            .bold()
                    }

                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
