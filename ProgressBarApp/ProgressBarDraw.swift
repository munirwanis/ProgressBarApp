//
//  ProgressBarDraw.swift
//  ProgressBarApp
//
//  Created by Munir Wanis on 24/04/17.
//  Copyright © 2017 Munir Wanis. All rights reserved.
//

import UIKit

public class ProgressBarDraw : NSObject {
    
    // Drawing methods
    
    public class func drawProgressBar(frame: CGRect = CGRect(x: 0, y: 0, width: 300, height: 16), progress: CGFloat = 114) {
        //// General Declarations
        // This non-generic function dramatically improves compilation times of complex expressions.
        func fastFloor(_ x: CGFloat) -> CGFloat { return floor(x) }
        
        //// Color Declarations
        let color = UIColor(red: 0.856, green: 0.217, blue: 0.037, alpha: 1.000)
        
        //// Progress Border Drawing
        let progressBorderPath = UIBezierPath(roundedRect: CGRect(x: frame.minX + 1, y: frame.minY + 1, width: fastFloor((frame.width - 1) * 0.99331 + 0.5), height: 14), cornerRadius: 4)
        color.setStroke()
        progressBorderPath.lineWidth = 1
        progressBorderPath.stroke()
        
        
        //// Progress Active Drawing
        let progressActivePath = UIBezierPath(roundedRect: CGRect(x: 1, y: 1, width: progress, height: 14), cornerRadius: 4)
        color.setFill()
        progressActivePath.fill()
    }
}
