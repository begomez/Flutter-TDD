// ignore_for_file: avoid_print

import 'package:junit/was_run.dart';

import 'main_test.reflectable.dart';

void main() {
  initializeReflectable();

  launchTests();
}

void launchTests() {
  testMethodInvocation();
  testSetUp();
}

void testMethodInvocation() {
  final test = WasRun("testMethod");

  test.run();

  assert(test.logsAreEqual(target: ["setUp", "testMethod"]));
}

void testSetUp() {
  final test = WasRun("testMethod");

  test.setUp();

  assert(test.logsAreEqual(target: ["setUp"]));
}
