React = require 'react'
{ PropTypes } = require 'react'

Scalable = ({children}) ->
  scaledData = scaleFlat children.props.data, children.props.width, children.props.height, children.props.r
  newElement = React.cloneElement children, {data: scaledData}
  <div>
    {newElement}
  </div>

scaleFlat = (data, width, height, r) ->
  maxY = Math.max data ...
  data.map (y, i) ->
    cx: (width - r) / data.length * i + r
    cy: height - y / maxY * (height - r)

scaleArrays = (data, width, height, r) ->
  { minX, maxX, minY, maxY } = Helper.calculate(data)
  data.map ([x, y], i) ->
    cx: (x - minX) / (maxX - minX) * (width - 2 * r) + r
    cy: height - ( (y - minY) / (maxY - minY) * (height - 2 * r) + r )

# scale = (data, width, height, r) ->
  # switch typeof data
  #   when 'array'
  # scaleArrays data, width, height, r
    # when PropTypes.arrayOf(PropTypes.number).isRequired
  # scaleFlat data, width, height, r

Scalable.propTypes =
  children: PropTypes.element.isRequired

Scalable.displayName = 'Scalable'

module.exports = Scalable
