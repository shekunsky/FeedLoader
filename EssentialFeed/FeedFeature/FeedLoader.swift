//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Alex2 on 31.05.2023.
//

import Foundation


public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
