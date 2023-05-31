//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alex2 on 31.05.2023.
//

import Foundation


enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
