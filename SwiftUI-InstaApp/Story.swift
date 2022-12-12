//
//  Model.swift
//  SwiftUI-InstaApp
//
//  Created by 近藤米功 on 2022/12/12.
//

import Foundation

struct Story: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}
