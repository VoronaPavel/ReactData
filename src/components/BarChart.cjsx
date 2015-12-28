React = require 'react'

BarChart = ({data, width, height, spaceBetween, className, shapeRendering}) ->
  max = Math.max data ...
  dx = width / data.length
  <svg width={width} height={height}>
  {data.map (element, i) ->
    elementWidth = dx * i
    elementHeight = element / max * height
    <rect
      className={className}
      height={elementHeight}
      key={i}
      width={dx - spaceBetween}
      x={elementWidth}
      y={height - elementHeight}
      shapeRendering={shapeRendering}
    />}
  </svg>

BarChart.propTypes =
  data         : React.PropTypes.arrayOf(React.PropTypes.number).isRequired
  height       : React.PropTypes.number.isRequired
  width        : React.PropTypes.number.isRequired
  className    : React.PropTypes.string
  spaceBetween : React.PropTypes.number

BarChart.defaultProps =
  className      : 'bar'
  shapeRendering : 'crispEdges'
  spaceBetween   : 1

BarChart.displayName = 'BarChart'

module.exports = BarChart
