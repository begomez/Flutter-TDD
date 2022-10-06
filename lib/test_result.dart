class TestResult {
  int runCount;

  TestResult({this.runCount = 0});

  String summary() => "$runCount run, 0 failed";

  void testStarted() => runCount++;
}
