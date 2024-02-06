//
//  UIViewExtensions.swift
//  TrendingMovies
//
//  Created by Maryna Bolotska on 01/02/24.
//

import Foundation
import UIKit

// MARK: - Image constants
 enum UIConstants {
    static let imageHeight: CGFloat = 147
     static let imageWidth: CGFloat = 133
    static let imageAdditionalSpacing: CGFloat = 20
    static let labelToCellInset: CGFloat = 6

}

extension UIView {
    func round( _ radious: CGFloat = 10) {
        self.layer.cornerRadius = radious
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
}
