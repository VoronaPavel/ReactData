React         = require 'react'
{PropTypes: {oneOfType, arrayOf, number, shape, string}} = require 'react'

SimplePlot = (props) ->
  <g>
    <polyline
      points={transform props.data}
      {...props}
    />
  </g>

transform = (data) ->
  data
    .map ({x, y}) -> "#{x},#{y}"
    .reduce (left, right) -> "#{left} #{right}"

SimplePlot.propTypes =
  data: oneOfType([
      arrayOf number
      arrayOf arrayOf number
      arrayOf shape {x: number, y: number}
      ]).isRequired
  className: string

SimplePlot.defaultProps =
  className: 'plot'

SimplePlot.displayName = 'SimplePlot'

module.exports = SimplePlot
