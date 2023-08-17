//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Alex2 on 15.08.2023.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
