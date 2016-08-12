React = require 'react'

Tooltip = require './Tooltip'

Point = React.createClass
  render: ->
    <g onMouseOver={@showTooltip} onMouseLeave={@hideTooltip}>
      <circle
        cx={@props.x}
        cy={@props.y}
        r={@props.r}
      />
      <Tooltip
        style={@tooltipStyle()}
        x={@props.x}
        y={@props.y}
        text="(#{@props.x.toFixed 0}, #{@props.y.toFixed 0})"
      />
    </g>

  showTooltip: ->
    @setState isTooltipVisible: yes

  hideTooltip: ->
    @setState isTooltipVisible: no

  tooltipStyle: ->
    visibility: if @state.isTooltipVisible then 'visible' else 'hidden'

  getInitialState: ->
    isTooltipVisible: no

  getDefaultProps: ->
    r: 15

  displayName: 'Point'

module.exports = Point
