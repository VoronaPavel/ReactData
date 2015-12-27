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
    <svg width={props.width} height={props.height}>
      <Plot {...props} className={'plot'} />
    </svg>
  </div>

app = <App
        data={Data.Line}
        width={document.documentElement.clientWidth-4}
        height={document.documentElement.clientHeight-4}
      />

App.displayName = 'App'

ReactDOM.render app, document.getElementById 'app'
# <ReactTooltip />
