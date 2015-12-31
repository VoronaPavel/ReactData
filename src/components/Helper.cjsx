calculate = (data) ->
  for [x, y] in data
    minX = x if x < minX or not minX? #todo optimize
    minY = y if y < minY or not minY? #todo optimize
    maxX = x if x > maxX or not maxX? #todo optimize
    maxY = y if y > maxY or not maxY? #todo optimize
  { minX, maxX, minY, maxY }

max = (values) ->
  Math.max values...

extend = (object, properties) ->
  for key, val of properties
    object[key] = val
  object

module.exports = { calculate, max }
