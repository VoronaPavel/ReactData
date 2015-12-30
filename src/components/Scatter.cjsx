React = require 'react'

Scalable = require './Scalable'
SimpleScatter = require './SimpleScatter'

Scatter = (props) ->
  <Scalable>
    <SimpleScatter {...props} />
  </Scalable>

Scatter.displayName = 'Scatter'

module.exports = Scatter
