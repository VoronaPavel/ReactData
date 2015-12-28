React = require 'react'

BarChart = ({data, width, height, fill, spaceBetween, className}) ->
  max = Math.max data ...
  dx = width / data.length
  <svg width={width} height={height}>
  {data.map (element, i) ->
    elementWidth = dx * i
    elementHeight = element / max * height
    <rect
      className={className}
      fill={fill}
      height={elementHeight}
      key={i}
      width={dx - spaceBetween}
      x={elementWidth}
      y={height - elementHeight}
    />}
  </svg>

BarChart.propTypes =
  data         : React.PropTypes.array.isRequired
  width        : React.PropTypes.number.isRequired
  height       : React.PropTypes.number.isRequired
  fill         : React.PropTypes.string
  spaceBetween : React.PropTypes.number

BarChart.defaultProps =
  className    : 'bar'
  spaceBetween : 1

BarChart.displayName = 'BarChart'

module.exports = BarChart
