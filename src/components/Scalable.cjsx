React = require 'react'
{PropTypes: {element, number}} = require 'react'

{calculate, max} = require './Helper'

Scalable = ({children, width, height}) ->
  <svg width={width} height={height}>
    {scaleElement children, height, width}
  </svg>

scaleElement = (element, height, width) ->
  {props: {data, r}} = element
  scaledData = scale data, width, height, r
  React.cloneElement element, data: scaledData

scale = (data, width, height, r = 0) ->
  if Array.isArray data[0]
    scaleArrays data, width, height, r
  if Array.isArray data
    scaleFlat data, width, height, r

scaleFlat = (data, width, height, r) ->
  maxY = max data
  data.map (y, i) ->
    x: (width - r) / data.length * i + r
    y: height - y / maxY * (height - r)

scaleArrays = (data, width, height, r) ->
  {minX, maxX, minY, maxY} = calculate data
  data.map ([x, y], i) ->
    x: (x - minX) / (maxX - minX) * (width - 2 * r) + r
    y: height - ( (y - minY) / (maxY - minY) * (height - 2 * r) + r )

Scalable.propTypes =
  children: element.isRequired
  height: number.isRequired
  width: number.isRequired

Scalable.displayName = 'Scalable'

module.exports = Scalable
