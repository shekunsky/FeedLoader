//
//  RemoteFeedLoader.swift
//  
//
//  Created by Alex2 on 01.06.2023.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (Error?, HTTPURLResponse?) -> Void)
}

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivityError
        case invalidData
    }
    
    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    public func load(comletion: @escaping (Error) -> Void) {
        client.get(from: url) { error, response in
            if response != nil {
                comletion(.invalidData)
            } else {
                comletion(.connectivityError)
            }
        }
    }
}
