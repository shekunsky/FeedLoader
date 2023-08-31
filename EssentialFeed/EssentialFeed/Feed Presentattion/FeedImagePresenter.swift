//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Alex2 on 28.07.2023.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
