class TestResult {
  int runCount;
  int failureCount;

  TestResult({this.runCount = 0, this.failureCount = 0});

  String summary() => "$runCount run, $failureCount failed";

  void testStarted() => runCount++;

  void testFailed() => failureCount++;
}
