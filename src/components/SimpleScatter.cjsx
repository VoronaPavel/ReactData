React = require 'react'
{ PropTypes } = require 'react'

SimpleScatter = ({data, width, height, r, className}) ->
  <svg width={width} height={height}>
  {data.map ({cx, cy}, i) ->
    <circle
      className={className}
      cx={cx}
      cy={cy}
      key={i}
      r={r}
    />}
  </svg>

SimpleScatter.propTypes =
  data      :   PropTypes.oneOfType([
      PropTypes.arrayOf(PropTypes.number)
      PropTypes.arrayOf(PropTypes.arrayOf(PropTypes.number))
      PropTypes.arrayOf(PropTypes.shape({ cx: PropTypes.number, cy: PropTypes.number }))
      ]).isRequired
  height    : PropTypes.number.isRequired
  width     : PropTypes.number.isRequired
  r         : PropTypes.number.isRequired
  className : PropTypes.string

SimpleScatter.defaultProps =
  className      : 'point'
  r              : 15

SimpleScatter.displayName = 'SimpleScatter'

module.exports = SimpleScatter
