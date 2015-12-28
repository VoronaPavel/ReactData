React     = require 'react'
{ PropTypes } = require('react')

Helper    = require './Helper'

Plot = ({data, height, width, className}) ->
  points = scale(data, height, width)
  <svg width={width} height={height}>
    <polyline
      points={points}
      className={className}
    />
  </svg>

scale = (data, height, width) ->
  { minX, maxX, minY, maxY } = Helper.calculate(data)
  data.map( ([x, y], i) ->
    cx = (x - minX) / (maxX - minX) * width
    cy = height - (y - minY) / (maxY - minY) * height
    "#{cx},#{cy}").reduce (left, right) -> "#{left} #{right}"

Plot.propTypes =
  data      : React.PropTypes.arrayOf(React.PropTypes.arrayOf(React.PropTypes.number)).isRequired
  height    : React.PropTypes.number.isRequired
  width     : React.PropTypes.number.isRequired
  className : React.PropTypes.string

Plot.defaultProps =
  className      : 'plot'

Plot.displayName = 'Plot'

module.exports = Plot
