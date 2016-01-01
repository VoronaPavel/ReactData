React = require 'react'
{PropTypes} = require 'react'

SimplePlot = require './SimplePlot'
Scalable = require './Scalable'

Plot = (props) ->
  <Scalable width={props.width} height={props.height}>
    <SimplePlot {...props} />
  </Scalable>

Plot.propTypes =
  data: PropTypes.oneOfType([
      PropTypes.arrayOf(PropTypes.number)
      PropTypes.arrayOf(PropTypes.arrayOf(PropTypes.number))
      PropTypes.arrayOf(PropTypes.shape({cx: PropTypes.number, cy: PropTypes.number}))
      ]).isRequired

Plot.displayName = 'Plot'

module.exports = Plot
