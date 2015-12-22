React = require 'react'
ReactDOM = require 'react-dom'
BarChart = require './components/BarChart'

App = (props) ->
  <svg width={props.width} height={props.height}>
    <BarChart {...props}/>
  </svg>

data = [150,300,400,50,123,323,234,345,435,600,300]

ReactDOM.render <App
  data={data}
  width={document.documentElement.clientWidth-4}
  height={document.documentElement.clientHeight-4}
  fill='green'/>, document.getElementById 'app'
