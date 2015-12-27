Data Visualization Components for React
==
Currently implemented:
--
- Simple Bar Chart
- Simple Scatter

## Examples
```js
import { BarChart, Scatter } from 'react-data'
// or if you are not on ES6+
var BarChart = require('react-data').BarChart;
var Scatter  = require('react-data').Scatter;
```
then use it
```js
<BarChart data={ [4,3,7] } />
```
Some components accept different data formats:
```js
<Scatter data={ [4,7,8] } />
// or array of [x, y] pairs
<Scatter data={ [[3, 5], [8, 6], [5, 2]] } />
```
Components allow to pass callbacks to hook on their life cycle events as ```onMouseOver``` or ```onClick```.
Every component has declared [PropTypes](https://facebook.github.io/react/docs/reusable-components.html#prop-validation) so prefer using not minified version of [react](https://github.com/facebook/react) when developing.
