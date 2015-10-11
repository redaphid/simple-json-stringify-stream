{Transform} = require 'stream'
class JSONStringifyStream extends Transform
  constructor: (options) ->
    super objectMode: true

  _transform:(chunk, enc, next) =>
    @push JSON.stringify(chunk)
    next()

module.exports = JSONStringifyStream
