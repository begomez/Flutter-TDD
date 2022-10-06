import 'package:junit/custom_reflectable.dart';

@aCustomReflectable
abstract class TestCase {
  String name;

  TestCase(this.name);

  void setUp();

  String run() {
    setUp();

    var instanceMirror = aCustomReflectable.reflect(this);

    instanceMirror.invoke(name, []);

    tearDown();

    return summary();
  }

  void tearDown();

  String summary();
}
