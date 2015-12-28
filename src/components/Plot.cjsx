React     = require 'react'
PropTypes = require('react').PropTypes

Helper    = require './Helper'

Plot = ({data, height, width, className, shapeRendering}) ->
  [minX, maxX, minY, maxY] = Helper.calculate(data)
  coords = data.map ([x, y], i) ->
    cx = (x - minX) / (maxX - minX) * width
    cy = height - (y - minY) / (maxY - minY) * height
    "#{cx},#{cy}"
  myCoords = coords.reduce (left, right) -> "#{left} #{right}"
  <svg width={width} height={height}>
    <polyline
      points={myCoords}
      className={className}
      shapeRendering={shapeRendering}
    />
  </svg>

Plot.propTypes =
  data      : React.PropTypes.arrayOf(React.PropTypes.arrayOf(React.PropTypes.number)).isRequired
  height    : React.PropTypes.number.isRequired
  width     : React.PropTypes.number.isRequired
  className : React.PropTypes.string

Plot.defaultProps =
  className      : 'plot'
  shapeRendering : 'crispEdges'

Plot.displayName = 'Plot'

module.exports = Plot
