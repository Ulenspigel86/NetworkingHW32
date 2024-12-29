//
//  Book.swift
//  NetworkingHW32
//
//  Created by Артем Иванов on 24.12.2024.
//

import Foundation

struct Book: Decodable {
    let id : Int
    let title: String
    let pageCount: Int
    let authors: [String]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case pageCount = "pageCount"
        case authors = "authors"
    }
}

