//
//  UIViewExtensions.swift
//  SH Feedback Link
//
//  Created by Christopher Davis on 4/19/18.
//  Copyright © 2018 Christopher Davis. All rights reserved.
//

import Foundation
import UIKit

extension CALayer {
    func shadowColorFromUIColor(color: UIColor) {
        self.shadowColor = color.cgColor
    }
}
