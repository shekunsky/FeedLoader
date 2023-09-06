//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Alex2 on 06.09.2023.
//

import Foundation

public enum FeedEndpoint {
    case get
    
    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
