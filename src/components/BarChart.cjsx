React = require 'react'

module.exports = ({data, width, height, fill}) ->
  max = Math.max data...
  dx = width / data.length
  <svg width={width} height={height}>
  {data.map (element, i) ->
    elementHeight = element / max * height
    <rect
      key={i}
      width={dx - 1}
      height={elementHeight}
      x={dx * i}
      y={height - elementHeight}
      fill={fill}/>}
  </svg>
