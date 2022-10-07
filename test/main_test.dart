// ignore_for_file: avoid_print

import 'package:junit/test_result.dart';
import 'package:junit/was_run.dart';

import 'main_test.reflectable.dart';

const setUpLabel = "setUp";
const testMethodLabel = "testMethod";
const tearDownLabel = "tearDown";

void main() {
  initializeReflectable();

  launchTests();
}

void launchTests() {
  testMethodInvocation();
  testSetUp();
  testTearDown();
  testSummary();
  testResult();
  testSuite();
}

void testMethodInvocation() {
  final test = WasRun("testMethod");

  print(test.run());

  assert(test.logsAreEqual(target: [setUpLabel, testMethodLabel, tearDownLabel]));
}

void testSetUp() {
  final test = WasRun("testMethod");

  test.setUp();

  assert(test.logsAreEqual(target: [setUpLabel]));
}

void testTearDown() {
  final test = WasRun("testMethod");

  test.tearDown();

  assert(test.logsAreEqual(target: [tearDownLabel]));
}

void testSummary() {
  final test = WasRun("testMethod");

  final result = test.run();
  print(result);

  assert(result.summary() == "1 run, 0 failed");
}

void testResult() {
  final result = TestResult();

  result.testStarted();
  result.testFailed();

  assert(result.summary() == "1 run, 1 failed");
}

void testSuite() {
  final suite = TestSuite();

  suite.add(WasRun("testMethod"));
  suite.add(WasRun("testBrokenMethod"));

  assert(suite.count() == 2);
}
