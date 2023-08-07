//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Alex2 on 07.08.2023.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
