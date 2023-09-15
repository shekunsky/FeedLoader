//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Alex2 on 07.08.2023.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
