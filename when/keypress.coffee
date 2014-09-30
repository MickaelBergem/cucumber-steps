module.exports = ->
  @When /^I press "(.*)"$/, (key, callback) ->
    browser.actions().sendKeys(protractor.Key[key]).perform().then callback
