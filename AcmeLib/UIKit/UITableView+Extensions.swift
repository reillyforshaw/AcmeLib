//
//  UITableView+Extensions.swift
//  AcmeLib
//
//  Created by Reilly Forshaw on 2018-03-04.
//  Copyright © 2018 Reilly Forshaw. All rights reserved.
//

import Foundation

import Foundation
import UIKit

extension UITableView {
  func registerCellTypeWithMatchingNibNameAndReuseIdentifier(_ type: UITableViewCell.Type) {
    let nibName = String(describing: type)
    register(UINib(nibName: nibName, bundle: nil), forCellReuseIdentifier: nibName)
  }

  func dequeueCellWithMatchingNibNameAndReuseIdentifier<T : UITableViewCell>(ofType type: T.Type, for indexPath: IndexPath) -> T {
    let reuseIdentifier = String(describing: type)
    return dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! T
  }
}
