React = require 'react'
ReactDOM = require 'react-dom'
BarChart = require './components/BarChart'
Scatter = require './components/Scatter'

App = (props) ->
  <svg width={props.width} height={props.height}>
    <Scatter {...props}/>
  </svg>

data = [150,300,400,50,123,323,234,345,435,600,300,765,456,345,678,987,1234,634,756,456,734,224,754]

ReactDOM.render <App
  data={data}
  width={document.documentElement.clientWidth-4}
  height={document.documentElement.clientHeight-4}
  fill='white'/>, document.getElementById 'app'
