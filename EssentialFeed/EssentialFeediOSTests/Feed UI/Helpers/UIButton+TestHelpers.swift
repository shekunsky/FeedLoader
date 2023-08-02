//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Alex2 on 17.07.2023.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
