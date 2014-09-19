module.exports = ->
  @When /^I click on "(.*)"$/, (text, callback) ->
    selection = find element, text
    selection.click().then callback
