React = require 'react'
PropTypes = require('react').PropTypes

Tooltip = ({x, y, text, className}) ->
  <g>
    <text x={x} y={y} className={className}>
      {text}
    </text>
  </g>

Tooltip.propTypes =
  text      : PropTypes.string.isRequired
  x         : PropTypes.number.isRequired
  y         : PropTypes.number.isRequired
  className : PropTypes.string


Tooltip.defaultProps =
  className: 'tooltip'

Tooltip.displayName = 'Tooltip'

module.exports = Tooltip
