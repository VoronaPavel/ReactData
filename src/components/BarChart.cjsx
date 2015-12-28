React = require 'react'

BarChart = ({data, width, height, spaceBetween, className}) ->
  <svg width={width} height={height}>
  {scale(data, width, height).map ({x, y, width}, i) ->
    <rect
      className={className}
      height={y}
      key={i}
      width={width - spaceBetween}
      x={x}
      y={height - y}
    />}
  </svg>

scale = (data, width, height) ->
  max = Math.max data ...
  data.map (element, i) ->
    x : width / data.length * i
    y : element / max * height
    width: width / data.length

BarChart.propTypes =
  data         : React.PropTypes.arrayOf(React.PropTypes.number).isRequired
  height       : React.PropTypes.number.isRequired
  width        : React.PropTypes.number.isRequired
  className    : React.PropTypes.string
  spaceBetween : React.PropTypes.number

BarChart.defaultProps =
  className      : 'bar'
  spaceBetween   : 1

BarChart.displayName = 'BarChart'

module.exports = BarChart
