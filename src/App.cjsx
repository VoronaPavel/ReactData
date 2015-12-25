React    = require 'react'
ReactDOM = require 'react-dom'

Data     = require './Data'

BarChart = require './components/BarChart'
Scatter  = require './components/Scatter'
Scatter2D  = require './components/Scatter2D'

App = (props) ->
  <svg width={props.width} height={props.height}>
    <Scatter2D {...props} />
  </svg>

app = <App
        data={Data.Flat}
        width={document.documentElement.clientWidth-4}
        height={document.documentElement.clientHeight-4}
      />

App.displayName = 'App'

ReactDOM.render app, document.getElementById 'app'
