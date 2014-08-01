# Atom Cucumber Steps
> CucumberJS step definitions

### Docs

- [Protractor API](https://github.com/angular/protractor/blob/master/docs/api.md)
- [CucumberJs](https://github.com/cucumber/cucumber-js)
- [Chai Assert](http://chaijs.com/guide/styles/#assert)

### Usage

- Add dependencies `npm install --save-dev protractor cucumber chai`
- Add protractor.conf (coffee example bellow)
- Clone submodule `git submodule add git@github.com:atom-angular/cucumber-steps.git test/features/step_definitions/cucumber-steps`
- Run protractor `webdriver-manager update && protractor --require coffee-script/register test/protractor.conf.coffee`

```coffee
module.exports.config =
  framework: 'cucumber'

  specs: [
    'features/*.feature'
  ]

  capabilities:
    browserName: process.env.BROWSER || 'firefox'

  seleniumAddress: process.env.SELENIUM || null
```
