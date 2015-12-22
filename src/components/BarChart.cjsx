React = require 'react'

BarChart = ({data, width, height, fill}) ->
  max = Math.max data...
  dx = width / data.length
  <g>
  {data.map (element, i) ->
    elementHeight = element / max * height
    <rect
      className='bar'
      fill={fill}
      height={elementHeight}
      key={i}
      width={dx - 1}
      x={dx * i}
      y={height - elementHeight}/>}
  </g>

BarChart.propTypes =
  data: react.PropTypes.array.isRequired
  width: react.PropTypes.number.isRequired
  height: react.PropTypes.number.isRequired
  fill: react.PropTypes.string.isRequired

module.exports = BarChart
