React = require 'react'

scaleFlat = (data, width, height, r) ->
  maxY = Math.max data ...
  data.map (y, i) ->
    cx: (width - r) / data.length * i + r
    cy: height - element / maxY * (height - r)

scaleArrays = (data, width, height, r) ->
  { minX, maxX, minY, maxY } = Helper.calculate(data)
  data.map ([x, y], i) ->
    cx: (x - minX) / (maxX - minX) * (width - 2 * r) + r
    cy: height - ( (y - minY) / (maxY - minY) * (height - 2 * r) + r )

scale = (data) ->
  switch props.data.type
    when PropTypes.arrayOf(PropTypes.arrayOf(PropTypes.number)).isRequired
      scaleArray data, width, height, r
    when PropTypes.arrayOf(PropTypes.number).isRequired
      scaleFlat data, width, height, r

Scalable = (props) ->
  scaledData = scale props.data
  <props.children {props} data={scaledData} />

Scalable.propTypes =
  children: React.PropTypes.element.isRequired

module.exports = Scalable
