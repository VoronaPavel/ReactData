React = require 'react'

Scatter = ({data, width, height, fill, stroke = 'red', r = 5}) ->
  max = Math.max data ...
  dx = (width - r) / data.length
  <g>
  {data.map (element, i) ->
    elementHeight = element / max * (height - r)
    <circle
        cx={dx * i + r}
        cy={height - elementHeight}
        fill={fill}
        key={i}
        r={r}
        stroke={stroke}
        className='point'/>}
  </g>

Scatter.propTypes =
  data: React.PropTypes.array.isRequired
  width: React.PropTypes.number.isRequired
  height: React.PropTypes.number.isRequired
  fill: React.PropTypes.string.isRequired
  stroke: React.PropTypes.string.isRequired

module.exports = Scatter
