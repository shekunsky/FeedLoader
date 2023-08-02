//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Alex2 on 21.06.2023.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
