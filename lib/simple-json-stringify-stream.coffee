{Transform} = require 'stream'
class JSONStringifyStream extends Transform
  constructor: (options) ->
    super objectMode: true

  _transform:(chunk, enc, next) =>
    console.log chunk
    jsonString = JSON.stringify chunk
    next()
    @push jsonString

module.exports = JSONStringifyStream
