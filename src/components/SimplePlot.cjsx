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
  data.map( ({cx, cy}, i) -> "#{cx},#{cy}")
    .reduce (left, right) -> "#{left} #{right}"

SimplePlot.propTypes =
  data      :   PropTypes.oneOfType([
      PropTypes.arrayOf(PropTypes.number)
      PropTypes.arrayOf(PropTypes.arrayOf(PropTypes.number))
      PropTypes.arrayOf(PropTypes.shape({ cx: PropTypes.number, cy: PropTypes.number }))
      ]).isRequired
  className : React.PropTypes.string

SimplePlot.defaultProps =
  className      : 'plot'

SimplePlot.displayName = 'SimplePlot'

module.exports = SimplePlot
