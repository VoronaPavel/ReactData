React = require 'react'
Point = require './Point'
Scalable = require './Scalable'
data = require './2dData'

Scatter = ({data}) ->
  <g>
    {data.map ({x, y}, i) ->
      <Point key={i} x={x} y={y} />}
  </g>

Scatter.propTypes =
  data

Scatter.displayName = 'Scatter'

module.exports = Scalable Scatter
