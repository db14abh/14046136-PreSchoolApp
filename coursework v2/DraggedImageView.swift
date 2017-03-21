//
//  DraggedImageView.swift
//  Dragging_Image
//
//  Created by Xianhui Che on 26/05/2016.
//  Copyright © 2016 Xianhui Che. All rights reserved.
//

import UIKit

class DraggedImageView: UIImageView {

    var startLocation: CGPoint?
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        startLocation = touches.first?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let currentLocation = touches.first?.location(in: self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        self.center = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        
        var newcenter = self.center
        let halfx = self.bounds.midX
        newcenter.x = max(halfx, newcenter.x)
        newcenter.x = min((self.superview?.bounds.size.width)! - halfx,
                        newcenter.x)
        let halfy = self.bounds.midY
        newcenter.y = max(halfy, newcenter.y)
        newcenter.y = min((self.superview?.bounds.size.height)! - halfy,
                    newcenter.y)
    // set new location 
        self.center = newcenter
    }
}
