3D vectors for [Wren](https://munificent.github.io/wren/)
=========================================================

3D vector library for Wren.

```dart
import "vector" for Vector

var zero = Vector.new()           // Set to (0, 0, 0)
var ones = Vector.new(1)          // Set to (1, 1, 0)
var twoD = Vector.new(1, 2)       // Set to (1, 2, 0)
var threeD = Vector.new(1, 2, 3)  // Set to (1, 2, 3)

var vec = Vector.new(4, 5, 6)
vec.toString  // "Vector(4, 5, 6)"

vec.x = vec.y + 10
vec.toString  // "Vector(4, 15, 6)"

vec.set(7, 8, 9)
vec.toString  // "Vector(7, 8, 9)"

var vecA = Vector.new(1, 2, 3)
var vecB = Vector.new(4, 5, 6)

(vecA + vecB).toString       // "Vector(5, 7, 9)"
(vecA - vecB).toString       // "Vector(-3, -3, -3)"
vecA.distanceTo(vecB)        // 5.196...
Vector.distance(vecA, vecB)  // 5.196...

(vecA + 10).toString  // "Vector(11, 12, 13)"
(vecA - 10).toString  // "Vector(-9, -8, -7)"
(vecA * 10).toString  // "Vector(10, 20, 30)"
(vecA / 2).toString   // "Vector(0.5, 1, 1.5)"
(-vecA).toString      // "Vector(-1, -2, -3)"
```

Running tests
-------------

To run tests, run this:

```sh
wren tests/test.wren
```
