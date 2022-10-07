# junit

Flutter sample app to demo a practical example of TDD.

## Getting Started

Goal is using TDD to create a small testing framework JUnit style. Notice the repeating sequence (RED, GREEN, REFACTOR) in the commit history. 

Idea is taken from: 

https://www.amazon.com/Test-Driven-Development-Kent-Beck/dp/0321146530 

The app uses the dart mirrors package to invoke methods dynamically by using reflection (mirrors in Dart).

## API

Contains the following classes: 

* TestCase: runner for a single test

* TestSuite: runner for a suite of tests

* WasRun: specialization of a test case that adds logging properties

* TestResult: abstraction of test execution results

* CustomReflectable: custom annotation required to apply reflection on other components

## Run program

Pseudo "tests" can be run by running

* test/main_test.dart

Console shows a running summary and reports any assertions not meet