React = require 'react'

Scatter = ({data, width, height, fill, stroke, r, className}) ->
  max = Math.max data ...
  dx = (width - r) / data.length
  <svg width={width} height={height}>
  {data.map (element, i) ->
    elementWidth = dx * i + r
    elementHeight = element / max * (height - r)
    <circle
      className={className}
      cx={elementWidth}
      cy={height - elementHeight}
      fill={fill}
      key={i}
      r={r}
      stroke={stroke}
    />}
  </svg>

Scatter.propTypes =
  data   : React.PropTypes.array.isRequired
  width  : React.PropTypes.number.isRequired
  height : React.PropTypes.number.isRequired
  fill   : React.PropTypes.string
  stroke : React.PropTypes.string

Scatter.defaultProps =
  className   : 'point'
  r           : 15

Scatter.displayName = 'Scatter'

module.exports = Scatter
