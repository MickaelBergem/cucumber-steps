module.exports = ->
  @Given /^I am on the homepage$/, (callback) ->
    go('/').then callback

  @Given /^I am on "(.*)"$/, (path, callback) ->
    go(path).then callback

  @Then /^I should be redirected to "(.*)"$/, (path, callback) ->
    browser.getCurrentUrl().then (url) ->
      assert.include url, path
      callback()
