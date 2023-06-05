//
//  File.swift
//  EssentialFeed
//
//  Created by Alex2 on 31.05.2023.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let url: URL
}
