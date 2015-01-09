3D vectors for [Wren](https://munificent.github.io/wren/)
=========================================================

Usage:

```dart
var zero = new Vector             // Set to (0, 0, 0)
var ones = new Vector(1)          // Set to (1, 1, 0)
var twoD = new Vector(1, 2)       // Set to (1, 2, 0)
var threeD = new Vector(1, 2, 3)  // Set to (1, 2, 3)

var vec = new Vector(4, 5, 6)
vec.toString  // "Vector(4, 5, 6)"

vec.x = vec.y + 10
vec.toString  // "Vector(4, 15, 6)"

vec.set(7, 8, 9)
vec.toString  // "Vector(7, 8, 9)"

var vecA = new Vector(1, 2, 3)
var vecB = new Vector(4, 5, 6)

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

Until some kind of [include/require/import](https://github.com/munificent/wren/issues/46) is added, you'll have to paste `vector.wren` at the top of your file.  Then:

Running tests
-------------

To run tests, run this:

```sh
WREN_PATH=/path/to/wren test.sh
```
