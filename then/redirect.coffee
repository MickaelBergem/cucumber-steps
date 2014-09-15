module.exports = ->
  @Then /^I should be redirected to "(.*)"$/, (path, callback) ->
    browser.getCurrentUrl().then (url) ->
      assert.include url, path
      callback()
