// ignore_for_file: avoid_print

import 'package:junit/was_run.dart';

import 'main_test.reflectable.dart';

void main() {
  initializeReflectable();

  final test = WasRun("testMethod");

  print(test.wasRun);

  test.run();

  print(test.wasRun);
}
