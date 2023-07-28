//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Alex2 on 28.07.2023.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
