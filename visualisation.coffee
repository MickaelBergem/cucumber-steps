module.exports = ->
  @Then /^I should see "(.*)"$/, (text, callback) ->
    $('html').getText().then (source) ->
      regex = new RegExp text, 'i'
      assert.match source, regex
      callback()

  @Then /^field "(.*)" should equal "(.*)"$/, (element, value, callback) ->
    selector = """*[name="#{element}"],##{element}"""
    $(selector).getAttribute('value').then (res) ->
      assert.equal res, value
      callback()
