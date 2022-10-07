import 'package:junit/test_case.dart';
import 'package:junit/test_result.dart';

class TestSuite {
  List<TestCase> testsToRun = [];

  TestSuite();

  void add(TestCase test) {
    testsToRun.add(test);
  }

  TestResult run() {
    TestResult result = TestResult();

    for (var test in testsToRun) {
      test.run(result);
    }

    return result;
  }

  int count() => testsToRun.length;
}
