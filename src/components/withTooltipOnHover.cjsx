React = require 'react'
Tooltip = require './Tooltip'

withTooltipOnHover = (Component) -> (props) ->
  <g onMouseOver={toggleVisibility} onMouseLeave={toggleVisibility}>
    <Component {...props} />
    <Tooltip
      style={tooltipStyle()}
      x={props.x}
      y={props.y}
      text="(#{props.x.toFixed 0}, #{props.y.toFixed 0})"
    />
  </g>

visible = no

toggleVisibility = () ->
  @forceUpdate()
  visible = not visible

tooltipStyle = () ->
  console.log(if visible then 'visible' else 'hidden');
  visibility: if visible then 'visible' else 'hidden'

module.exports = withTooltipOnHover
