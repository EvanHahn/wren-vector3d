class Vector {

  new          { set(0, 0, 0) }
  new(v)       { set(v, v, 0) }
  new(a, b)    { set(a, b, 0) }
  new(a, b, c) { set(a, b, c) }

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
      result = new Vector(x + other, y + other, z + other)
    } else {
      result = new Vector(x + other.x, y + other.y, z + other.z)
    }
    return result
  }
  - { new Vector(-x, -y, -z) }
  -(other) { this + -other }
  *(v) { new Vector(x * v, y * v, z * v) }
  /(v) { new Vector(x / v, y / v, z / v) }

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
