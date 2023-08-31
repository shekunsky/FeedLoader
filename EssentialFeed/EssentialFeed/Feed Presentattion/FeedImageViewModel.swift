//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Alex2 on 28.07.2023.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
