module.exports = ->
  @Then /^I wait (\d+)(s|ms)$/, (time, unit, callback) ->
    time = time * 1000 if unit == 's'
    setTimeout callback, time
