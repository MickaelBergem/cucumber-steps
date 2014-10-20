module.exports = ->
  @Then /^I should see "([^"]*)"$/, (text, callback) ->
    $ 'html'
    .getText().then (source) ->
      assert.include source, text
      callback()

  @Then /^field "([^"]*)" should equal "([^"]*)"$/, (element, value, callback) ->
    selector = """*[name="#{element}"],##{element}"""
    $(selector).getAttribute('value').then (res) ->
      assert.equal res, value
      callback()
