class WasRun {
  bool wasRun;
  String name;

  WasRun(this.name, {this.wasRun = false});

  void testMethod() {
    wasRun = true;
  }
}
