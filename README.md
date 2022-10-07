# junit

Flutter sample app for a practical example of TDD.

## Getting Started

Goal is use TDD to create a small testing framework JUnit style. Idea is taken from 

https://www.amazon.com/Test-Driven-Development-Kent-Beck/dp/0321146530 

The app uses the dart mirrors package to invoke methods dynamically by using reflection (mirrors in Dart).

## API

Contains the following classes: 

* TestCase: runner for a single test

* TestSuite: runner for a suite of tests

* WasRun: specialization of a test case that adds logging properties

* TestResult: abstraction of test execution results

## Run program

Pseudo "tests" can be run by running

* test/main_test.dart