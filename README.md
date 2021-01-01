# atnd_icons pdf string

ant_design_icons_angular_icons for flutter. PDF String.
Please Using [flutter_svg](https://pub.dev/packages/flutter_svg) to showing the PDF String

## Getting Started

```
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ant_design_icons_angular_icons/icons.dart';

SvgPicture.string(
    AtndIcons.getAntdIcons("hello", IconsType.fill),
    width: 16,
    height: 16,
    fit: BoxFit.contain,
),
```

## Generate Code

* `python generate/main.py`
* `flutter format .`

## Upload to PUB
