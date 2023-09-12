//
//  FeedPresenter.swift
//  EssentialFeed
//
//  Created by Alex2 on 28.07.2023.
//

import Foundation

public final class FeedPresenter {
    public static var title: String {
        return NSLocalizedString("FEED_VIEW_TITLE",
                                 tableName: "Feed",
                                 bundle: Bundle(for: FeedPresenter.self),
                                 comment: "Title for the feed view")
    }
}
