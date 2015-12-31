React     = require 'react'

Data      = require './Data'

BarChart  = require './components/BarChart'
Scatter   = require './components/Scatter'
Plot      = require './components/Plot'

App = (props) ->
  <div>
    <Plot data={Data.Simple} {...props} />
  </div>

App.displayName = 'App'

module.exports = App

# <BarChart  data={Data.Simple} {...props} height={props.height / 4} />
# <Plot      data={Data.Line}   {...props} height={props.height / 4} />
