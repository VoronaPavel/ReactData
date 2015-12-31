React         = require 'react'
{ PropTypes } = require 'react'

SimplePlot = (props) ->
  <g>
    <polyline
      points={transform props.data}
      {...props}
    />
  </g>

transform = (data) ->
  data.map( ({x, y}, i) -> "#{x},#{y}")
    .reduce (left, right) -> "#{left} #{right}"

SimplePlot.propTypes =
  data      :   PropTypes.oneOfType([
      PropTypes.arrayOf(PropTypes.number)
      PropTypes.arrayOf(PropTypes.arrayOf(PropTypes.number))
      PropTypes.arrayOf(PropTypes.shape({ x: PropTypes.number, y: PropTypes.number }))
      ]).isRequired
  className : React.PropTypes.string

SimplePlot.defaultProps =
  className      : 'plot'

SimplePlot.displayName = 'SimplePlot'

module.exports = SimplePlot
