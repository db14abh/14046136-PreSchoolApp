//
//  DraggedApple.swift
//  coursework
//
//  Created by Deep barchha on 14/02/2017.
//  Copyright © 2017 Deep. All rights reserved.
//

import UIKit

class DraggedApple: UIImageView {
    
    var startLocation : CGPoint?
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        startlocation + touches.first?.locationInView(self)
        
    }
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        let currentLocation = touches.first?.locationInView(self)
        let dx = currentLocation!.x - startlocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        self.center = CGPointMake(self.center.x.dx, self.center.y+dy)
    
    }
    }
