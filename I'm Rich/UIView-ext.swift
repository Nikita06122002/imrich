//
//  UIView-ext.swift
//  I'm Rich
//
//  Created by macbook on 22.10.2023.
//

import Foundation
import UIKit

extension UIView {
    
    func addSubViews(_ views: UIView...) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(view)
        }
        
    }
    
}
