React     = require 'react'
ReactDOM  = require 'react-dom'

ReactTooltip = require("react-tooltip")

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

app = <App
        width={document.documentElement.clientWidth-4}
        height={document.documentElement.clientHeight-20}
      />

App.displayName = 'App'

ReactDOM.render app, document.getElementById 'app'
# <ReactTooltip />
