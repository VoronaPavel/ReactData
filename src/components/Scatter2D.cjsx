React     = require 'react'
PropTypes = require('react').PropTypes

Helper    = require './Helper'

Scatter2D = ({data, width, height, r, className}) ->
  <svg width={width} height={height}>
  {scale(data, width, height, r).map ({cx, cy}, i) ->
    <circle
      className={className}
      cx={cx}
      cy={height - cy}
      key={i}
      r={r}
    />}
  </svg>

scale = (data, width, height, r) ->
  { minX, maxX, minY, maxY } = Helper.calculate(data)
  data.map ([x, y], i) ->
    cx: (x - minX) / (maxX - minX) * (width - 2 * r) + r
    cy: (y - minY) / (maxY - minY) * (height - 2 * r) + r

Scatter2D.propTypes =
  data        : PropTypes.arrayOf(PropTypes.arrayOf(PropTypes.number)).isRequired
  height      : PropTypes.number.isRequired
  width       : PropTypes.number.isRequired
  className   : PropTypes.string
  r           : PropTypes.number

Scatter2D.defaultProps =
  className      : 'point'
  r              : 15

Scatter2D.displayName = 'Scatter2D'

module.exports = Scatter2D
