module.exports = ->
  @Then /^I should see "([^"]*)" in row containing "([^"]*)"$/, (text, row_text, callback) ->
    selection = xpath """//*[text()="#{row_text}"]/..//*[text()="#{text}"]"""
    selection.getText().then (source) ->
      assert.include source, text
      callback()

  @Then /^I should see "([^"]*)" in row containing "([^"]*)", column ([0-9]+)$/, (text, row_text, column, callback) ->
    selection = xpath """(//*[text()="#{row_text}"]/..//td)[#{column}][text()="#{text}"]"""
    selection.getText().then (source) ->
      assert.include source, text
      callback()
