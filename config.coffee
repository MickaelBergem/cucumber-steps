global._ = require 'lodash'
global.chai = require 'chai'
global.assert = chai.assert

global.host = process.env.HOST || 'http://127.0.0.1'

global.go = (url) ->
  browser.get host + url

global.xpath = (string) ->
  element By.xpath string

global.find = (element, type) ->
  switch type
    when 'input'
      search = """//#{type}[@id|@name|@data-ng-model|@placeholder|@ng-model="#{element}"]"""
      return xpath search
    else
      search = """//*[text()="#{type}"]"""
      return xpath search
