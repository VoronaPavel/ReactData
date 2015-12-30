React = require 'react'
{ PropTypes } = require 'react'

Scalable = require './Scalable'
SimpleScatter = require './SimpleScatter'

Scatter = (props) ->
  <Scalable width={props.width} height={props.height}>
    <SimpleScatter {...props} />
  </Scalable>

Scatter.propTypes =
  data: PropTypes.oneOfType([
      PropTypes.arrayOf(PropTypes.number)
      PropTypes.arrayOf(PropTypes.arrayOf(PropTypes.number))
      PropTypes.arrayOf(PropTypes.shape({ cx: PropTypes.number, cy: PropTypes.number }))
      ]).isRequired

Scatter.displayName = 'Scatter'

module.exports = Scatter
