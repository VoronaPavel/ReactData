React     = require 'react'
PropTypes = require('react').PropTypes

Helper    = require './Helper'

Scatter2D = ({data, width, height, fill, stroke, r, className, onClick, onMouseOver}) ->
  [minX, maxX, minY, maxY] = Helper.calculate(data)
  <g>
  {data.map ([x, y], i) ->
    cx = (x - minX) / (maxX - minX) * (width - 2 * r) + r
    cy = (y - minY) / (maxY - minY) * (height - 2 * r) + r
    <circle
      className={className}
      cx={cx}
      cy={height - cy}
      fill={fill}
      key={i}
      onClick={onClick}
      onMouseOver={onMouseOver}
      r={r}
      stroke={stroke}
    />}
  </g>

Scatter2D.propTypes =
  data        : PropTypes.arrayOf(PropTypes.arrayOf(PropTypes.number)).isRequired
  height      : PropTypes.number.isRequired
  width       : PropTypes.number.isRequired
  className   : PropTypes.string
  fill        : PropTypes.string
  onClick     : PropTypes.func
  onMouseOver : PropTypes.func
  r           : PropTypes.number
  stroke      : PropTypes.string

Scatter2D.defaultProps =
  className : 'point'
  fill      : 'white'
  stroke    : 'red'
  r         : 10

Scatter2D.displayName = 'Scatter2D'

module.exports = Scatter2D
