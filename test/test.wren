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
