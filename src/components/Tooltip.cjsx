React         = require 'react'
{PropTypes} = require 'react'

Tooltip = (props) ->
  <text {...props}>
    {props.text}
  </text>

Tooltip.propTypes =
  text      : PropTypes.string.isRequired
  x         : PropTypes.number.isRequired
  y         : PropTypes.number.isRequired
  className : PropTypes.string


Tooltip.defaultProps =
  className: 'tooltip'

Tooltip.displayName = 'Tooltip'

module.exports = Tooltip
