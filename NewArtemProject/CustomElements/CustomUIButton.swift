//
//  CustomUIButton.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 05.12.2024.
//

import Foundation
import UIKit

class CustomUIButton: UIButton {
    
    init(hasShadow: Bool) {
        super.init(frame: .zero)
        setupButton(hasShadow: hasShadow)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let shadowPatch = UIBezierPath(rect: bounds)
        layer.shadowPath = shadowPatch.cgPath
    }
}

//MARK: - Setup UIButton
private extension UIButton {
    
    
    func setupButton(hasShadow: Bool) {
        backgroundColor = .blue
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 12)
        layer.cornerRadius = 10
        
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        if hasShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
            self.layer.shadowOpacity = 1
            self.layer.shadowRadius = 10
        }
    }
}

//MARK: - Constants
private extension CustomUIButton {
    
    enum Constant {
        static let cornerRadous: CGFloat = 10
    }
}
