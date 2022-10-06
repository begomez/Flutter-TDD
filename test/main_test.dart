// ignore_for_file: avoid_print

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
}

void testSummary() {
  final test = WasRun("testMethod");

  assert(test.run() == "1 run, 0 failed");
}

void testMethodInvocation() {
  final test = WasRun("testMethod");

  test.run();

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
