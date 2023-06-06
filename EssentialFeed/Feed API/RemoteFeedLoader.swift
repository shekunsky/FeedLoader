//
//  RemoteFeedLoader.swift
//  
//
//  Created by Alex2 on 01.06.2023.
//

import Foundation

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivityError
        case invalidData
    }
    
    public enum Result: Equatable {
        case success([FeedItem])
        case failure(Error)
    }
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load(completion: @escaping (Result) -> Void) {
        client.get(from: url) { result in
            switch result {
            case let .success(data, response):
                completion(self.map(data, from: response))
            case .failure:
                completion(.failure(.connectivityError))
            }
        }
    }
    
    private func map(_ data: Data, from response: HTTPURLResponse) -> Result {
        if let items = try? FeedItemsMapper.map(data, response) {
            return .success(items)
        } else {
            return .failure(.invalidData)
        }
    }
}
