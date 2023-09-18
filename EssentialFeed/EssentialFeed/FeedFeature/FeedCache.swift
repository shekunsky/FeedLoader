//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Alex2 on 07.08.2023.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
