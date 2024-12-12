//
//  Extensions+UIStackView.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 12.12.2024.
//

import Foundation
import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView ...){
        views.forEach { view in
            self.addArrangedSubview(view)
        }
    }
}
