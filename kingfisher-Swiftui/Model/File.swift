//
//  File.swift
//  kingfisher-Swiftui
//
//  Created by Md Towfiqul Islam on 6/17/25.
//

import Foundation

struct Pokemon : Decodable , Identifiable{
    let id: Int
    let name : String
    let imageUrl : String
    let type : String
    let height : Int
    let weight : Int
    let attack : Int
    let defense : Int
    let description : String
}
