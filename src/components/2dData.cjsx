{PropTypes: {oneOfType, arrayOf, number, shape, string}} = require 'react'

data = oneOfType([
  arrayOf number
  arrayOf arrayOf number
  arrayOf shape {x: number, y: number}
]).isRequired


module.exports = data
