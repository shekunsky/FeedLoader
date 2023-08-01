//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Alex2 on 01.08.2023.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
