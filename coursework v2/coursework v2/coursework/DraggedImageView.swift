//
//  DraggedImageView.swift
//  coursework
//
//  Created by Deep barchha on 14/02/2017.
//  Copyright © 2017 Deep. All rights reserved.
//


    import UIKit
    
    class DraggedImageVIew: UIImageView {
        
        var startLocation: CGPoint?
        
        override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
            startLocation = touches.first?.locationInView(self)
        }
        override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
            
            let currentLocation = touches.first?.locationInView(self)
            let dx = currentLocation!.x - startLocation!.x
            let dy = currentLocation!.y - startLocation!.y
            self.center = CGPointMake(self.center.x+dx, self.center.y+dy)
            
        }
    }


