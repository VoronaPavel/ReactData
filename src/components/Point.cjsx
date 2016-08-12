React = require 'react'
withTooltipOnHover = require './withTooltipOnHover'

Point = (props) ->
  <circle
    cx={props.x}
    cy={props.y}
    r={props.r}
  />

Point.defaultProps =
  r: 15

displayName: 'Point'

module.exports = withTooltipOnHover Point
