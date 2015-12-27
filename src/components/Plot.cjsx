React     = require 'react'
PropTypes = require('react').PropTypes

Helper    = require './Helper'

Plot = ({data, height, width}) ->
  [minX, maxX, minY, maxY] = Helper.calculate(data)
  coords = data.map ([x, y], i) ->
    cx = (x - minX) / (maxX - minX) * width
    cy = height - (y - minY) / (maxY - minY) * height
    "#{cx},#{cy}"
  myCoords = coords.reduce (left, right) -> "#{left} #{right}"
  <g>
    <polyline points={myCoords} className='plot'
    />
  </g>

Plot.displayName = 'Plot'

module.exports = Plot
