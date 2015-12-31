React = require 'react'
{ PropTypes } = require 'react'

Helper = require './Helper'

Scalable = ({children, width, height}) ->
  <svg width={width} height={height}>
    {scaleElement children}
  </svg>

scaleElement = (element) ->
  { data, width, height, r } = element.props
  scaledData = scale data, width, height, r
  React.cloneElement element, data: scaledData

scale = (data, width, height, r = 0) -> switch
  when Array.isArray data[0]
    scaleArrays data, width, height, r
  when Array.isArray data
    scaleFlat data, width, height, r

scaleFlat = (data, width, height, r) ->
  maxY = Math.max data ...
  data.map (y, i) ->
    x: (width - r) / data.length * i + r
    y: height - y / maxY * (height - r)

scaleArrays = (data, width, height, r) ->
  { minX, maxX, minY, maxY } = Helper.calculate data
  data.map ([x, y], i) ->
    x: (x - minX) / (maxX - minX) * (width - 2 * r) + r
    y: height - ( (y - minY) / (maxY - minY) * (height - 2 * r) + r )

Scalable.propTypes =
  children: PropTypes.element.isRequired
  height: PropTypes.number.isRequired
  width: PropTypes.number.isRequired

Scalable.displayName = 'Scalable'

module.exports = Scalable
