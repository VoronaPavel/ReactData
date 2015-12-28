React     = require 'react'
PropTypes = require('react').PropTypes

Helper    = require './Helper'

Scatter2D = ({data, width, height, r, className, shapeRendering}) ->
  [minX, maxX, minY, maxY] = Helper.calculate(data)
  <svg width={width} height={height}>
  {data.map ([x, y], i) ->
    cx = (x - minX) / (maxX - minX) * (width - 2 * r) + r
    cy = (y - minY) / (maxY - minY) * (height - 2 * r) + r
    <circle
      className={className}
      cx={cx}
      cy={height - cy}
      key={i}
      r={r}
      shapeRendering={shapeRendering}
    />}
  </svg>

Scatter2D.propTypes =
  data        : PropTypes.arrayOf(PropTypes.arrayOf(PropTypes.number)).isRequired
  height      : PropTypes.number.isRequired
  width       : PropTypes.number.isRequired
  className   : PropTypes.string
  r           : PropTypes.number

Scatter2D.defaultProps =
  className      : 'point'
  r              : 15
  shapeRendering : 'crispEdges'

Scatter2D.displayName = 'Scatter2D'

module.exports = Scatter2D
