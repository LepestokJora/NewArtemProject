//
//  CustomUIButton.swift
//  NewArtemProject
//
//  Created by Lepestok Jora on 05.12.2024.
//

import Foundation
import UIKit

class CustomUIButton: UIButton {
    
    var hasShadow: Bool
    
    init(hasShadow: Bool) {
        self.hasShadow = hasShadow
        super.init(frame: .zero)
        setupButton()
        
        if hasShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
            self.layer.shadowOpacity = 1
            self.layer.shadowRadius = 10
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton() {
        backgroundColor = .blue
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 12)
        layer.cornerRadius = 10
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let shadowPatch = UIBezierPath(rect: bounds)
        layer.shadowPath = shadowPatch.cgPath
    }
}

    
    
    
    
    
    
    
    
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        if hasShadow {
//            self.layer.shadowColor = UIColor.black.cgColor
//            self.layer.shadowOffset = CGSize(width: 0, height: 4)
//            self.layer.shadowOpacity = 0.2
//            self.layer.shadowRadius = 4
//        }
//    }

