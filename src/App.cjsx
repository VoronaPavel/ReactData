React    = require 'react'
ReactDOM = require 'react-dom'

Data     = require './Data'

BarChart = require './components/BarChart'
Scatter  = require './components/Scatter'

App = (props) ->
  <svg width={props.width} height={props.height}>
    <Scatter {...props}/>
  </svg>

ReactDOM.render <App
  data={Data.Simple}
  width={document.documentElement.clientWidth-4}
  height={document.documentElement.clientHeight-4}
  fill='white'/>, document.getElementById 'app'
