[![Build Status](https://travis-ci.org/dijonkitchen/To-TDD-or-TooDoDo-List.svg?branch=master)](https://travis-ci.org/dijonkitchen/To-TDD-or-TooDoDo-List)

# README

## What

A simple, persistent webapp based on [ToDoMVC](https://github.com/tastejs/todomvc) with tests!

## Why

This repository is meant as an exercise in a few different types
of "driven-development":
*   [Readme-Driven Development](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html)
*   [Test-Driven Development](https://en.wikipedia.org/wiki/Test-driven_development)
  *   [Behavior-Driven Development](https://en.wikipedia.org/wiki/Behavior-driven_development)
      * Regression tests  
          * Unit tests
          * Integration tests
          * Feature/System/Functional/Acceptance tests

Ideally, I'll have committed changes into git in a reasonable order
given the above so it'll be easy to reference. (If you examine this,
I have already failed quickly since I setup some of the testing gems
already!)

## Why

My hypothesis is that RDD/TDD/BDD are good practices for
long-term projects on larger teams that can benefit from good tests.
Specifically, staring with behavioral tests from a human perspective with things like unit tests on models and integration tests for functionality
allow for simpler, better designed software that can adapt to changes
more easily.

If that fails, then RDD/TDD/BDD may be too complicated, go the way of
the [Dodo](https://en.wikipedia.org/wiki/Dodo) or be :hankey:.

## Why

It'll make me a better developer by practicing something that I think
is good, but haven't had much chance to practice in the real world.

## Why

I love learning and improving!

## Why

The momentum I get from improving opens the door to new and better
opportunities with new and better people. New and better people
continue the virtuous circle.

## Why

Studies say strong relationships allow for opportunities for growth in
the good times and support in bad times. People and relationships are
the cornerstone of happiness, which results in better health AND wealth.
Who doesn't want to be all of the above?

## How

This was built with Rails, so it has [Ruby](https://www.ruby-lang.org/en/) as a dependency.

```sh
git clone https://github.com/dijonkitchen/To-TDD-or-TooDoDo-List.git
cd To-TDD-or-TooDoDo-List
gem install bundler
bundle install
bundle exec rails server
```

This is deployed on [Pivotal Web Services](https://run.pivotal.io/) via the
[Pivotal Cloud Foundry](https://pivotal.io/platform) platform to test it out.

You can view the app here: [http://to-tdd-or-toododo-list.cfapps.io/](http://to-tdd-or-toododo-list.cfapps.io/)

## Who

[Me](https://www.linkedin.com/in/jonathanschen/)
