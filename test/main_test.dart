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

  assert(!test.wasRun);

  test.run();

  assert(test.logContains(target: ["setUp", "run"]));
}

void testSetUp() {
  final test = WasRun("testMethod");

  test.run();

  assert(test.logContains(target: "setUp"));
}
