[![Code Climate](https://codeclimate.com/github/dijonkitchen/To-TDD-or-TooDoDo-List/badges/gpa.svg)](https://codeclimate.com/github/dijonkitchen/To-TDD-or-TooDoDo-List)

[![Test Coverage](https://codeclimate.com/github/dijonkitchen/To-TDD-or-TooDoDo-List/badges/coverage.svg)](https://codeclimate.com/github/dijonkitchen/To-TDD-or-TooDoDo-List/coverage)

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
Specifically, starting with behavioral tests from a human perspective with things like unit tests on models and integration tests for functionality
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

## Where

The experimented worked pretty well. The Readme was maybe more
extensive than it needed to be, but that was fun!

TDD/BDD was useful to discover some edge cases and only build as
much as was needed. It kept functionality to a minimum viable
product.

Unit test were simple, but since this was a simple app with very
little functionality, there weren't many. In the future, it'd be
good to add "sad" and "bad" cases instead of just the "happy"
path.

There were minimal integration tests also because of minimal
functionality and because I used feature tests to test the
integration of the system.

For feature tests, there quite a bit, but cleaned it up a little
based on feedback from peers that it may make the test suite slow when there
are a lot. I learned that they should be used to test edge cases, but just for
making sure things are working as intended (just the happy paths).

While updating some gems or ruby versions, these regression tests were
useful to see if functionality was still intact. Additionally, with
continuous integration services like Travis CI, it runs all the tests on
each pull request, so you can tell if new code is breaking anything.

Overall, this was a great experience. I'll continue to use similar
methods, but perhaps on more ambitious projects to really see the power
of tests in production.

Going forward, I can still add some tests and style it nicely!

## Who

[Me](https://www.linkedin.com/in/jonathanschen/)
