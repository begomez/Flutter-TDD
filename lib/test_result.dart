class TestResult {
  int runCount;

  TestResult({this.runCount = 1});

  String summary() => "$runCount run, 0 failed";
}
