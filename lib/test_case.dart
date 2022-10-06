import 'package:junit/custom_reflectable.dart';

@aCustomReflectable
abstract class TestCase {
  String name;

  TestCase(this.name);

  void setUp();

  void run() {
    setUp();

    var instanceMirror = aCustomReflectable.reflect(this);

    instanceMirror.invoke(name, []);
  }
}
