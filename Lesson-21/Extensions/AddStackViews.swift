//
//  AddStackViews.swift
//  Lesson-21
//
//  Created by Сергей Смирнов on 08.10.2024.
//

import UIKit

extension UIStackView {
    func addStackViews(_ views: UIView...) {
        for view in views {
            addArrangedSubview(view)
        }
    }
}
