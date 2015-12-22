React = require 'react'

BarChart = ({data, width, height, fill}) ->
  max = Math.max data ...
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
  data   : React.PropTypes.array.isRequired
  width  : React.PropTypes.number.isRequired
  height : React.PropTypes.number.isRequired
  fill   : React.PropTypes.string.isRequired

module.exports = BarChart
