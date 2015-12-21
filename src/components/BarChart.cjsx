React = require 'react'

BarChart = ({data, width, height, fill}) ->
  max = Math.max data...
  dx = width / data.length
  <svg width={width} height={height}>
  {data.map (element, i) ->
    elementHeight = element / max * height
    <rect
      className='bar'
      key={i}
      width={dx - 1}
      height={elementHeight}
      x={dx * i}
      y={height - elementHeight}
      fill={fill}/>}
  </svg>

BarChart.propTypes =
  data = react.PropTypes.array.isRequired
  width = react.PropTypes.number.isRequired
  height = react.PropTypes.number.isRequired
  fill = react.PropTypes.string.isRequired

module.exports = BarChart
