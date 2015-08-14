import "please" for Please
import "../vector" for Vector

{
  var vec = Vector.new()

  Please.equal(vec.x, 0)
  Please.equal(vec.y, 0)
  Please.equal(vec.z, 0)

  vec.x = 4
  vec.y = -2
  vec.z = 0.1

  Please.equal(vec.x, 4)
  Please.equal(vec.y, -2)
  Please.equal(vec.z, 0.1)
}

{
  var vec = Vector.new(2)
  Please.equal(vec.x, 2)
  Please.equal(vec.y, 2)
  Please.equal(vec.z, 0)
}

{
  var vec = Vector.new(3, 6)
  Please.equal(vec.x, 3)
  Please.equal(vec.y, 6)
  Please.equal(vec.z, 0)
}

{
  var vec = Vector.new(2, 4, 8)
  Please.equal(vec.x, 2)
  Please.equal(vec.y, 4)
  Please.equal(vec.z, 8)
}

{
  var vec = Vector.new(6, 7, 8)
  Please.equal(vec.toList.count, 3)
  Please.equal(vec.toList[0], 6)
  Please.equal(vec.toList[1], 7)
  Please.equal(vec.toList[2], 8)
}

{
  var vec = Vector.new()
  vec.set(1, 2)
  Please.equal(vec.x, 1)
  Please.equal(vec.y, 2)
  Please.equal(vec.z, 0)
}

{
  var vec = Vector.new()
  vec.set(1, 2, 3)
  Please.equal(vec.x, 1)
  Please.equal(vec.y, 2)
  Please.equal(vec.z, 3)
}

{
  var vec = Vector.new(10, 1.2, -3.1)
  Please.equal(vec.toString, "Vector(10, 1.2, -3.1)")
}

{
  var vec = Vector.new(1, 2, 3) + 10
  Please.equal(vec.x, 11)
  Please.equal(vec.y, 12)
  Please.equal(vec.z, 13)
}

{
  var vec = Vector.new(1, 2, 3) + Vector.new(4, 5, 6)
  Please.equal(vec.x, 5)
  Please.equal(vec.y, 7)
  Please.equal(vec.z, 9)
}

{
  var vec = Vector.new(1, 2, 3) - 10
  Please.equal(vec.x, -9)
  Please.equal(vec.y, -8)
  Please.equal(vec.z, -7)
}

{
  var vec = Vector.new(1, 2, 3) - Vector.new(4, 6, 8)
  Please.equal(vec.x, -3)
  Please.equal(vec.y, -4)
  Please.equal(vec.z, -5)
}

{
  var vec = -(Vector.new(1, 2, 3))
  Please.equal(vec.x, -1)
  Please.equal(vec.y, -2)
  Please.equal(vec.z, -3)
}

{
  var vec = Vector.new(1, 2, 3) * 10
  Please.equal(vec.x, 10)
  Please.equal(vec.y, 20)
  Please.equal(vec.z, 30)
}

{
  var vec = Vector.new(10, 20, 30) / 10
  Please.equal(vec.x, 1)
  Please.equal(vec.y, 2)
  Please.equal(vec.z, 3)
}

{
  var a = Vector.new(1, 2, 3)
  var b = Vector.new(4, 5, 6)
  Please.equal(a.distanceTo(b), b.distanceTo(a))
  Please.equal(a.distanceTo(b), 27.sqrt)
  Please.equal(Vector.distance(a, b), 27.sqrt)
}

{
  var a = Vector.new(1, 2, 3)
  var b = Vector.new(1, 2, 3)
  var c = Vector.new(4, 5, 6)
  Please.equal(true, a == a)
  Please.equal(true, a == b)
  Please.equal(true, a != c)
  Please.equal(true, b == a)
  Please.equal(true, b != c)
  Please.equal(false, a != a)
  Please.equal(false, a != b)
  Please.equal(false, a == c)
  Please.equal(false, b != a)
  Please.equal(false, b == c)
}

IO.print("All tests passed!")
