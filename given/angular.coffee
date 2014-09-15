module.exports = ->
  @Given /^I am not on angular$/, (callback) ->
    browser.ignoreSynchronization = true
    callback()

  @Given /^I am on angular$/, (callback) ->
    browser.ignoreSynchronization = false
    callback()
