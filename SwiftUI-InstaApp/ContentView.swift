//
//  ContentView.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "homekit")
                    }
                }.tag(1)
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.fill")
                    }
                }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
