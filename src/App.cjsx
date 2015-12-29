React     = require 'react'

Data      = require './Data'

BarChart  = require './components/BarChart'
Scatter   = require './components/Scatter'
Scatter2D = require './components/Scatter2D'
Plot      = require './components/Plot'

App = (props) ->
  <div>
    <BarChart  data={Data.Simple} {...props} height={props.height / 4} />
    <Scatter2D data={Data.Flat}   {...props} height={props.height / 4} />
    <Plot      data={Data.Line}   {...props} height={props.height / 4} />
    <Scatter   data={Data.Simple} {...props} height={props.height / 4} />
  </div>

App.displayName = 'App'

module.exports = App
