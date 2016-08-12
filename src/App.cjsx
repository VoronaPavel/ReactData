React     = require 'react'

Data      = require './Data'

BarChart  = require './components/BarChart'
Scatter   = require './components/Scatter'
Plot      = require './components/Plot'
Point = require './components/Point'

App = (props) ->
  <svg width={500} height={500}>
    <Scatter  data={Data.Simple} {...props} height={props.height / 4} />
  </svg>

App.displayName = 'App'

module.exports = App

# <Point x={150} y={150} {...props} />
# <BarChart  data={Data.Simple} {...props} height={props.height / 4} />
# <Plot      data={Data.Line}   {...props} height={props.height / 4} />
