import 'package:junit/was_run.dart';

void main() {
  print("main()");

  final test = WasRun("testMethod");

  print(test.wasRun);

  test.run();

  print(test.wasRun);
}
