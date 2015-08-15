class Vector {

  construct new()        { set(0, 0, 0) }
  construct new(v)       { set(v, v, 0) }
  construct new(a, b)    { set(a, b, 0) }
  construct new(a, b, c) { set(a, b, c) }

  x { _x }
  y { _y }
  z { _z }
  x=(v) { _x = v }
  y=(v) { _y = v }
  z=(v) { _z = v }

  set(a, b) {
    x = a
    y = b
  }
  set(a, b, c) {
    x = a
    y = b
    z = c
  }

  +(other) {
    var result
    if (other is Num) {
      result = Vector.new(x + other, y + other, z + other)
    } else {
      result = Vector.new(x + other.x, y + other.y, z + other.z)
    }
    return result
  }
  - { Vector.new(-x, -y, -z) }
  -(other) { this + -other }
  *(v) { Vector.new(x * v, y * v, z * v) }
  /(v) { Vector.new(x / v, y / v, z / v) }

  ==(other) { (x == other.x) && (y == other.y) && (z == other.z) }
  !=(other) { !(this == other) }

  distanceTo(other) { Vector.distance(this, other) }
  static distance(a, b) {
    var xdiff = a.x - b.x
    var ydiff = a.y - b.y
    var zdiff = a.z - b.z
    return ((xdiff * xdiff) + (ydiff * ydiff) + (zdiff * zdiff)).sqrt
  }

  toList { [x, y, z] }
  toString {
    var coords = x.toString + ", " + y.toString + ", " + z.toString
    return "Vector(" + coords + ")"
  }

}
