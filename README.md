# Atom Cucumber Steps
> CucumberJS step definitions

### Docs

- [Protractor API](https://github.com/angular/protractor/blob/master/docs/api.md)
- [CucumberJs](https://github.com/cucumber/cucumber-js)
- [Chai Assert](http://chaijs.com/guide/styles/#assert)

### Usage

```
# Clone this repo into your project
git submodule add git@github.com:atom-angular/cucumber-steps.git test/features/step_definitions/cucumber-steps
# Copy sample protractor config and sample test
cp test/features/step_definitions/cucumber-steps/default-protractor.conf.coffee test/protractor.conf.coffee
cp test/features/step_definitions/cucumber-steps/default-homepage.feature test/features/homepage.feature

# Download dependencies
npm install --save-dev protractor cucumber chai
# Download driver for selenium
node_modules/.bin/webdriver-manager update

# Run test
node_modules/.bin/protractor --require coffee-script/register test/protractor.conf.coffee
```
