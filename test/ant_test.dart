import 'package:flutter_test/flutter_test.dart';

import 'package:atnd_icons/atnd_icons.dart';

void main() {
  test('atnd icons', () {
    AtndIcons.getAntdIcons("hello", IconsType.fill);
  });
}
