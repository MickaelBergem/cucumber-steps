module.exports = ->
  @Given /^I am on the homepage$/, (callback) ->
    go('/').then callback

  @Given /^I am on "(.*)"$/, (path, callback) ->
    go(path).then callback
