module.exports = ->
  @When /^I fill "([^"]*)" with "([^"]*)"$/, (element, value, callback) ->
    search = """//input[@id|@name|@data-ng-model|@placeholder="#{element}"]"""
    selection = xpath(search)
    selection.clear().then ->
      selection.sendKeys(value).then callback

  @When /^I fill "([^"]*)" with property "([^"]*)"$/, (element, property, callback) ->
    search = """//input[@id|@name|@data-ng-model|@placeholder="#{element}"]"""
    selection = xpath(search)
    selection.clear().then ->
      selection.sendKeys(process.env[property.toUpperCase()]).then callback
