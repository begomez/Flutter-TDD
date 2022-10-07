import 'package:junit/test_case.dart';

class TestSuite {
  List<TestCase> testsToRun = [];

  TestSuite();

  void add(TestCase test) {
    testsToRun.add(test);
  }

  int count() => testsToRun.length;
}
