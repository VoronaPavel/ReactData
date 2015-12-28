React = require 'react'

Scatter = ({data, width, height, r, className, shapeRendering}) ->
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
      key={i}
      r={r}
      shapeRendering={shapeRendering}
    />}
  </svg>

Scatter.propTypes =
  data      : React.PropTypes.arrayOf(React.PropTypes.number).isRequired
  height    : React.PropTypes.number.isRequired
  width     : React.PropTypes.number.isRequired
  r         : React.PropTypes.number.isRequired
  className : React.PropTypes.string

Scatter.defaultProps =
  className      : 'point'
  r              : 15
  shapeRendering : 'crispEdges'

Scatter.displayName = 'Scatter'

module.exports = Scatter
