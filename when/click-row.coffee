module.exports = ->
  @When /^I click on "([^"]*)" in row containing "([^"]*)"$/, (text, row_text, callback) ->
    selection = xpath """//*[text()="#{row_text}"]/..//*[text()="#{text}"]"""
    selection.click().then callback
