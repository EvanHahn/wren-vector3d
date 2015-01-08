{
  var vec = new Vector

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
  var vec = new Vector(2)
  Please.equal(vec.x, 2)
  Please.equal(vec.y, 2)
  Please.equal(vec.z, 0)
}

{
  var vec = new Vector(3, 6)
  Please.equal(vec.x, 3)
  Please.equal(vec.y, 6)
  Please.equal(vec.z, 0)
}

{
  var vec = new Vector(2, 4, 8)
  Please.equal(vec.x, 2)
  Please.equal(vec.y, 4)
  Please.equal(vec.z, 8)
}

{
  var vec = new Vector(6, 7, 8)
  Please.equal(vec.toList.count, 3)
  Please.equal(vec.toList[0], 6)
  Please.equal(vec.toList[1], 7)
  Please.equal(vec.toList[2], 8)
}

{
  var vec = new Vector
  vec.set(1, 2)
  Please.equal(vec.x, 1)
  Please.equal(vec.y, 2)
  Please.equal(vec.z, 0)
}

{
  var vec = new Vector
  vec.set(1, 2, 3)
  Please.equal(vec.x, 1)
  Please.equal(vec.y, 2)
  Please.equal(vec.z, 3)
}

{
  var vec = new Vector(10, 1.2, -3.1)
  Please.equal(vec.toString, "Vector(10, 1.2, -3.1)")
}
