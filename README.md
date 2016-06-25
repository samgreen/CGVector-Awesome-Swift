CGVector-Awesome-Swift
======================

This library has 100% test coverage.

Additions to CoreGraphics CGVector, most useful with Apple's SpriteKit. This was ported from my Objective-C [CGVector-Awesome](github.com/samgreen/CGVector-Awesome) library.

# Extensions
```
/* Create a vector from the given point */
let v1 = CGVector(point: CGPoint(x: 3, y: 5))

/* Add two vectors */
let result = v1.sum(v2)

/* Subtract two vectors */
let result = v1.difference(v2)

/* Multiply two vectors */
let result = v1.multiply(v2)

/* Multiply a vector by a single scalar */
let result = v1.multiply(3)

/* Normalize a vector. This scales the length of the vector to 1 */
let result = v1.normalize()

/* Creates a vector perpendicular to the vector */
let result = v1.makePerpendicular()

/* Calculate the angle of between two vectors */
let result = v1.angleTo(v2)

/* Calculate the angle of `vector` */
let result = v1.angle()

/* Calculate the angle of `vector` for use with a SpriteKit zRotation property */
let result = v1.angleSpriteKit()

/* Calculate the dot product of two vectors */
let result = v1.dotProduct(v2)

/* Calculate the magnitude (length) of a vector */
let result = v1.length()

/* Calculate the distance between two vectors */
let result = v1.distance(v2)

/* Determine if two vectors are perpendicular */
let result = v1.isPerpendicularTo(v2)
```

# zLib License

Copyright (c) 2016 Sam Green

This software is provided 'as-is', without any express or implied
warranty. In no event will the authors be held liable for any damages
arising from the use of this software.

Permission is granted to anyone to use this software for any purpose,
including commercial applications, and to alter it and redistribute it
freely, subject to the following restrictions:

1. The origin of this software must not be misrepresented; you must not
   claim that you wrote the original software. If you use this software
   in a product, an acknowledgement in the product documentation would be
   appreciated but is not required.
2. Altered source versions must be plainly marked as such, and must not be
   misrepresented as being the original software.
3. This notice may not be removed or altered from any source distribution.
