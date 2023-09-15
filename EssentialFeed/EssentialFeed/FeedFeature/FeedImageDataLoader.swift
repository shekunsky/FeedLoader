//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Alex2 on 17.07.2023.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
