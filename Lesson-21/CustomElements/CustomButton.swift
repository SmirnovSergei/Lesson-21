//
//  CustomButton.swift
//  Lesson-21
//
//  Created by Сергей Смирнов on 08.10.2024.
//

import UIKit

class CustomButton: UIButton {
    
    init(textButton: String, bgColor: UIColor) {
        super.init(frame: .zero)
        setupButton(text: textButton, bgColor: bgColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Setup View
private extension CustomButton {
    func setupButton(text: String, bgColor: UIColor) {
        setTitle(text, for: .normal)
        setTitleColor(.white, for: .normal)
        backgroundColor = bgColor
        layer.cornerRadius = 10
        
        heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
