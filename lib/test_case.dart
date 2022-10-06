import 'package:junit/custom_reflectable.dart';

@aCustomReflectable
class TestCase {
  String name;

  TestCase(this.name);

  void run() {
    var instanceMirror = aCustomReflectable.reflect(this);

    instanceMirror.invoke(name, []);
  }
}
