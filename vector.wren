class Vector {

  new {
    x = 0
    y = 0
    z = 0
  }

  new(v) {
    x = v
    y = v
    z = 0
  }

  new(a, b) {
    x = a
    y = b
    z = 0
  }

  new(a, b, c) {
    x = a
    y = b
    z = c
  }

  x { _x }
  y { _y }
  z { _z }
  x=(v) { _x = v }
  y=(v) { _y = v }
  z=(v) { _z = v }

  toList { [x, y, z] }

}
