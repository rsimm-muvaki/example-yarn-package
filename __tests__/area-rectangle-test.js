'use strict';

test('area of rectangle with width 3 and height 4 to equal 12', () => {
  const ShapeMath = require('../index.js');
  console.log(process.env.HELLO);
  expect(ShapeMath.area_rectangle(3, 4)).toBe(12);
})
