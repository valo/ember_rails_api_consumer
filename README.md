# Rails API consumer using Her

This is an example Rails app, that uses Her to read data from a Rails API, which exposes data in the EmberJS format. You can read more here: [Rails + EmberJS + Active Model Serializers + Her](http://www.valentinmihov.com/2015/01/17/rails-plus-emberjs-plus-active-model-serializers-plus-her/)

## Status

[![Build status](https://travis-ci.org/valo/ember_rails_api_consumer.svg)](https://travis-ci.org/valo/ember_rails_api_consumer)

## Running

To run the app, execute these commands after a git clone:

``` bash
$ bundle
$ ./bin/rails console
Loading development environment (Rails 4.1.9)
2.1.2 :001 > Project.find(1)
 => #<Project(projects/1) name="Shop list" id=1 tasks=[#<Task(tasks/2)...
```

Keep in mind that you need to have the [ember_rails_api_example](https://github.com/valo/ember_rails_api_example) app running locally, so that you can read the data from it.
