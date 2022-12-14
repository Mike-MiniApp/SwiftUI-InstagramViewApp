//
//  Post.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import Foundation

struct Post: Identifiable {
    let id = UUID()
    let image: String
    let comment: String
    let userName: String
    let profileImage: String
}
