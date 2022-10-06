import 'package:junit/custom_reflectable.dart';
import 'package:junit/test_result.dart';

@aCustomReflectable
abstract class TestCase {
  String name;

  TestCase(this.name);

  void setUp();

  TestResult run() {
    setUp();

    var instanceMirror = aCustomReflectable.reflect(this);

    instanceMirror.invoke(name, []);

    tearDown();

    return TestResult();
  }

  void tearDown();
}
