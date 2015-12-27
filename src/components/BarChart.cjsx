React = require 'react'

BarChart = ({data, width, height, fill}) ->
  max = Math.max data ...
  dx = width / data.length
  <svg width={width} height={height}>
  {data.map (element, i) ->
    elementHeight = element / max * height
    elementWidth = dx * i
    <rect
      className='bar'
      fill={fill}
      height={elementHeight}
      key={i}
      width={dx - 1}
      x={elementWidth}
      y={height - elementHeight}
    />}
  </svg>

BarChart.propTypes =
  data   : React.PropTypes.array.isRequired
  width  : React.PropTypes.number.isRequired
  height : React.PropTypes.number.isRequired
  fill   : React.PropTypes.string

BarChart.displayName = 'BarChart'

module.exports = BarChart
