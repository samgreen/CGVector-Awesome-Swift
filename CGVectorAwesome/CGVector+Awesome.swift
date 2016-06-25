//
//  CGVector+Awesome.swift
//  CGVectorAwesome
//
//  Created by Sam Green on 6/24/16.
//  Copyright © 2016 Sam Green. All rights reserved.
//

import Foundation
import CoreGraphics

extension CGVector {
    /* Create a vector from the given CGPoint */
    init(point: CGPoint) {
        dx = point.x
        dy = point.y
    }
    
    /* Add two vectors */
    func sum(vector: CGVector) -> CGVector {
        return CGVector(dx: dx + vector.dx, dy: dy + vector.dy)
    }
    
    /* Subtract two vectors */
    func difference(vector: CGVector) -> CGVector {
        return CGVector(dx: dx - vector.dx, dy: dy - vector.dy)
    }
    
    /* Multiply two vectors */
    func multiply(vector: CGVector) -> CGVector {
        return CGVector(dx: dx * vector.dx, dy: dy * vector.dy)
    }
    
    /* Multiply a vector by a single scalar */
    func multiply(scalar: CGFloat) -> CGVector {
        return CGVector(dx: dx * scalar, dy: dy * scalar)
    }
    
    /* Normalize a vector. This scales the length of the vector to 1, creating a unit vector */
    func normalize() -> CGVector {
        let len = length()
        if len == 0 {
            return CGVector.zero
        }
        
        let scale = 1.0 / len
        return multiply(scale)
    }
    
    /* Creates a vector perpendicular to `vector` */
    func makePerpendicular() -> CGVector {
        return CGVector(dx: -dy, dy: dx)
    }
    
    /* Calculate the angle of between two vectors */
    func angleTo(vector: CGVector) -> CGFloat {
        let dot = dotProduct(vector)
        let magnitude = length() * vector.length()
        if magnitude == 0 {
            return 0
        }
        
        let clampedMagnitude = max(min(Float(dot / magnitude), 1.0), -1.0)
        return CGFloat(acosf(clampedMagnitude))
    }

    /* Calculate the angle of `vector` */
    func angle() -> CGFloat {
        return atan2(dx, dy)
    }
    
    /* Calculate the angle of `vector` for use with a SpriteKit zRotation property */
    func angleSpriteKit() -> CGFloat {
        return fmod(CGFloat(M_PI * 2.0) - angle() + CGFloat(M_PI_2), CGFloat(M_PI * 2.0))
    }
    
    /* Calculate the dot product of two vectors */
    func dotProduct(vector: CGVector) -> CGFloat {
        return dx * vector.dx + dy * vector.dy
    }
    
    /* Calculate the magnitude (length) of a vector */
    func length() -> CGFloat {
        return hypot(dx, dy)
    }
    
    /* Calculate the distance between two vectors */
    func distance(vector: CGVector) -> CGFloat {
        return vector.difference(self).length()
    }
    
    /* Returns true if a given vector is perpendicular to this vector */
    func isPerpendicularTo(vector: CGVector) -> Bool {
        return dotProduct(vector) == 0
    }
}