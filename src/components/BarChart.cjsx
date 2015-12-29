React = require 'react'

BarChart = ({data, width, height, spaceBetween, className}) ->
  <svg width={width} height={height}>
  {scale(data, width, height, spaceBetween).map ({x, y, width}, i) ->
    <rect
      className={className}
      height={height}
      key={i}
      width={width}
      x={x}
      y={y}
    />}
  </svg>

scale = (data, width, height, spaceBetween) ->
  max = Math.max data ...
  data.map (element, i) ->
    height: element / max * height
    x: width / data.length * i
    y: height - element / max * height
    width: width / data.length - spaceBetween

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
