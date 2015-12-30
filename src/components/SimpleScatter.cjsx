React = require 'react'
{ PropTypes } = require 'react'

SimpleScatter = (props) ->
  <g>
    {props.data.map ({cx, cy}, i) ->
      <circle key={i} cx={cx} cy={cy} {...props} />}
  </g>

SimpleScatter.propTypes =
  data      :   PropTypes.oneOfType([
      PropTypes.arrayOf(PropTypes.number)
      PropTypes.arrayOf(PropTypes.arrayOf(PropTypes.number))
      PropTypes.arrayOf(PropTypes.shape({ cx: PropTypes.number, cy: PropTypes.number }))
      ]).isRequired
  r         : PropTypes.number.isRequired
  className : PropTypes.string

SimpleScatter.defaultProps =
  className : 'point'
  r         : 15

SimpleScatter.displayName = 'SimpleScatter'

module.exports = SimpleScatter
