module.exports = ->
  @When /^I fill "(.*)" with "(.*)"$/, (element, value, callback) ->
    selection = find element, 'input'
    selection.clear().then ->
      selection.sendKeys(value).then callback

  @When /^I fill "(.*)" with property "(.*)"$/, (element, property, callback) ->
    selection = find element, 'input'
    selection.clear().then ->
      selection.sendKeys(process.env[property.toUpperCase()]).then callback
