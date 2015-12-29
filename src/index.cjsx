React    = require 'react'
ReactDOM = require 'react-dom'

App      = require './App'

app = <App
        width={document.documentElement.clientWidth-4}
        height={document.documentElement.clientHeight-4}
      />

ReactDOM.render app, document.getElementById 'app'
