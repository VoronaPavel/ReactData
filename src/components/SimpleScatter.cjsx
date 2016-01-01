React = require 'react'
{PropTypes: {oneOfType, arrayOf, number, shape, string}} = require 'react'

SimpleScatter = (props) ->
  <g>
    {props.data.map ({x, y}, i) ->
      <circle key={i} cx={x} cy={y} {...props} />}
  </g>

SimpleScatter.propTypes =
  data: oneOfType([
      arrayOf number
      arrayOf arrayOf number
      arrayOf shape {x: number, y: number}
      ]).isRequired
  className: string
  r: number.isRequired

SimpleScatter.defaultProps =
  className: 'point'
  r        : 15

SimpleScatter.displayName = 'SimpleScatter'

module.exports = SimpleScatter
