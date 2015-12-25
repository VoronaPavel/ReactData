React = require 'react'

Scatter2D = ({data, width, height, fill, stroke, r, className}) ->
  minX = data.map(([x, y]) -> x).reduce((left, right) -> Math.min left, right) #todo optimize
  minY = data.map(([x, y]) -> y).reduce((left, right) -> Math.min left, right) #todo optimize
  maxX = data.map(([x, y]) -> x).reduce((left, right) -> Math.max left, right) #todo optimize
  maxY = data.map(([x, y]) -> y).reduce((left, right) -> Math.max left, right) #todo optimize
  <g>
  {data.map ([x, y], i) ->
    elementWidth  = (x - minX) / (maxX - minX) * (width - 2 * r) + r
    elementHeight = (y - minY) / (maxY - minY) * (height - 2 * r) + r
    <circle
      className={className}
      cx={elementWidth}
      cy={height - elementHeight}
      fill={fill}
      key={i}
      r={r}
      stroke={stroke}
    />}
  </g>

Scatter2D.propTypes =
  data      : React.PropTypes.arrayOf(React.PropTypes.arrayOf(React.PropTypes.number)).isRequired
  width     : React.PropTypes.number.isRequired
  height    : React.PropTypes.number.isRequired
  fill      : React.PropTypes.string
  stroke    : React.PropTypes.string
  className : React.PropTypes.string
  r         : React.PropTypes.number

Scatter2D.defaultProps =
  className : 'point'
  fill      : 'white'
  stroke    : 'red'
  r         : 10

Scatter2D.displayName = 'Scatter2D'

module.exports = Scatter2D
