global.chai = require 'chai'
global.assert = chai.assert

host = process.env.HOST || 'http://127.0.0.1'

global.go = (url) ->
  browser.get host + url

global.xpath = (string) ->
  element By.xpath string
