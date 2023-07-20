//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Alex2 on 20.07.2023.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
