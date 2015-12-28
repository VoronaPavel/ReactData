React = require 'react'

Scatter = ({data, width, height, r, className}) ->
  <svg width={width} height={height}>
  {scale(data, r, width, height).map ({cx, cy}, i) ->
    <circle
      className={className}
      cx={cx}
      cy={cy}
      key={i}
      r={r}
    />}
  </svg>

scale = (data, r, width, height) ->
  max = Math.max data ...
  data.map (element, i) ->
    cx: (width - r) / data.length * i + r
    cy: height - element / max * (height - r)

Scatter.propTypes =
  data      : React.PropTypes.arrayOf(React.PropTypes.number).isRequired
  height    : React.PropTypes.number.isRequired
  width     : React.PropTypes.number.isRequired
  r         : React.PropTypes.number.isRequired
  className : React.PropTypes.string

Scatter.defaultProps =
  className      : 'point'
  r              : 15

Scatter.displayName = 'Scatter'

module.exports = Scatter
