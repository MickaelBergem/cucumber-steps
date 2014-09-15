module.exports = ->
  @When /^I click on "(.*)"$/, (text, callback) ->
    search = """//*[contains(text(), "#{text}")]"""
    xpath(search).click().then callback

  @When /^I click on "(.*)" "(.*)"$/, (element, text, callback) ->
    search = """//#{element}[contains(text(), "#{text}")]"""
    xpath(search).click().then callback
