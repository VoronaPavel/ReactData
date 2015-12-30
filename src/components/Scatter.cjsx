React = require 'react'

Scalable = require './Scalable'
SimpleScatter = require './SimpleScatter'

ScalableScatter = (props) ->
  <Scalable {props}>
    <SimpleScatter />
  </Scalable>

module.exports = Scatter
