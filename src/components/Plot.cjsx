React     = require 'react'
PropTypes = require('react').PropTypes

Helper    = require './Helper'

Plot = ({data, height, width, className}) ->
  [minX, maxX, minY, maxY] = Helper.calculate(data)
  coords = data.map ([x, y], i) ->
    cx = (x - minX) / (maxX - minX) * width
    cy = height - (y - minY) / (maxY - minY) * height
    "#{cx},#{cy}"
  myCoords = coords.reduce (left, right) -> "#{left} #{right}"
  <svg width={width} height={height}>
    <polyline points={myCoords} className={className} />
  </svg>

Plot.defaultProps =
  className : 'plot'

Plot.displayName = 'Plot'

module.exports = Plot
