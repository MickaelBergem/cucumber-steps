host = process.env.HOST || 'http://127.0.0.1'

global.go = (url) ->
  browser.get host + url

global.xpath = (string) ->
  element By.xpath string

module.exports = ->
  @Given /^I am not on angular$/, (callback) ->
    browser.ignoreSynchronization = true
    callback()

  @Given /^I am on angular$/, (callback) ->
    browser.ignoreSynchronization = false
    callback()

  @Then /^I wait (\d+)(s|ms)$/, (time, unit, callback) ->
    time = time * 1000 if unit == 's'
    setTimeout callback, time
