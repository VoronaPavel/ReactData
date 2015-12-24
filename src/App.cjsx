React    = require 'react'
ReactDOM = require 'react-dom'

Data     = require './Data'

BarChart = require './components/BarChart'
Scatter  = require './components/Scatter'

App = (props) ->
  <svg width={props.width} height={props.height}>
    <Scatter {...props} />
  </svg>

app = <App
        data={Data.Simple}
        width={document.documentElement.clientWidth-4}
        height={document.documentElement.clientHeight-4}
        fill='white'
      />

App.displayName = 'App'

ReactDOM.render app, document.getElementById 'app'
