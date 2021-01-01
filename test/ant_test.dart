import 'package:flutter_test/flutter_test.dart';

import 'package:atnd_icons/atnd_icons.dart';

void main() {
  test('atnd icons', () {
    var accountBookFillString =
        '<svg  viewBox="64 64 896 896"><path d="M880 184H712v-64c0-4.4-3.6-8-8-8h-56c-4.4 0-8 3.6-8 8v64H384v-64c0-4.4-3.6-8-8-8h-56c-4.4 0-8 3.6-8 8v64H144c-17.7 0-32 14.3-32 32v664c0 17.7 14.3 32 32 32h736c17.7 0 32-14.3 32-32V216c0-17.7-14.3-32-32-32zM648.3 426.8l-87.7 161.1h45.7c5.5 0 10 4.5 10 10v21.3c0 5.5-4.5 10-10 10h-63.4v29.7h63.4c5.5 0 10 4.5 10 10v21.3c0 5.5-4.5 10-10 10h-63.4V752c0 5.5-4.5 10-10 10h-41.3c-5.5 0-10-4.5-10-10v-51.8h-63.1c-5.5 0-10-4.5-10-10v-21.3c0-5.5 4.5-10 10-10h63.1v-29.7h-63.1c-5.5 0-10-4.5-10-10v-21.3c0-5.5 4.5-10 10-10h45.2l-88-161.1c-2.6-4.8-.9-10.9 4-13.6 1.5-.8 3.1-1.2 4.8-1.2h46c3.8 0 7.2 2.1 8.9 5.5l72.9 144.3 73.2-144.3a10 10 0 018.9-5.5h45c5.5 0 10 4.5 10 10 .1 1.7-.3 3.3-1.1 4.8z"/></svg>';
    var questionOutlineString =
        '<svg  viewBox="64 64 896 896"><path d="M764 280.9c-14-30.6-33.9-58.1-59.3-81.6C653.1 151.4 584.6 125 512 125s-141.1 26.4-192.7 74.2c-25.4 23.6-45.3 51-59.3 81.7-14.6 32-22 65.9-22 100.9v27c0 6.2 5 11.2 11.2 11.2h54c6.2 0 11.2-5 11.2-11.2v-27c0-99.5 88.6-180.4 197.6-180.4s197.6 80.9 197.6 180.4c0 40.8-14.5 79.2-42 111.2-27.2 31.7-65.6 54.4-108.1 64-24.3 5.5-46.2 19.2-61.7 38.8a110.85 110.85 0 00-23.9 68.6v31.4c0 6.2 5 11.2 11.2 11.2h54c6.2 0 11.2-5 11.2-11.2v-31.4c0-15.7 10.9-29.5 26-32.9 58.4-13.2 111.4-44.7 149.3-88.7 19.1-22.3 34-47.1 44.3-74 10.7-27.9 16.1-57.2 16.1-87 0-35-7.4-69-22-100.9zM512 787c-30.9 0-56 25.1-56 56s25.1 56 56 56 56-25.1 56-56-25.1-56-56-56z"/></svg>';
    var antQuestionOutline = AtndIcons.getAntdIcons("hello", IconsType.fill);
    var antQuestionOutline2 = AtndIcons.getAntdIcons("1qd", IconsType.outline);
    var antaccountBookFill =
        AtndIcons.getAntdIcons("account-book", IconsType.fill);
    expect(questionOutlineString, antQuestionOutline);
    expect(questionOutlineString, antQuestionOutline2);
    expect(accountBookFillString, antaccountBookFill);
  });
}
