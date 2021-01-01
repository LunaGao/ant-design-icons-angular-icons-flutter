import os

def getContentInSingleQuotes(value):
    values = value.split('\'')
    return values[1]

def generateIcons(flutterFile, filePath, iconsName):
    if iconsName == "fill":
        flutterFile.write('''
        static const Map<String, String> _iconsFill = {''')
    if iconsName == "outline":
        flutterFile.write('''
        static const Map<String, String> _iconsOutline = {''')
    if iconsName == "twotone":
        flutterFile.write('''
        static const Map<String, String> _iconsTwotone = {''')

    with open(filePath, 'r') as f:
        while True: 
            line1 = f.readline()
            if not line1: 
                break
            valueName = line1.strip()
            if not valueName:
                continue
            if valueName.startswith('/'):
                continue
            if valueName.startswith('*'):
                continue
            if valueName.startswith('c'):
                continue
            if valueName.startswith('}'):
                continue
            line2 = f.readline()
            valueTheme = line2.strip()
            if not valueTheme.find(iconsName) > 1:
                continue
            line3 = f.readline()
            valueSvg = line3.strip()
            name = getContentInSingleQuotes(valueName)
            svg = getContentInSingleQuotes(valueSvg)
            print('=========='+ name + '==========')
            flutterFile.write('    \'' + name + '\': \'' + svg + '\',\n')

    flutterFile.write('''  };''')


dirname,_ = os.path.split(os.path.abspath(__file__))
filePath=dirname+'/ant-design-icons-angular-icons.js'
iconsDartPath=dirname+'/../lib/icons.dart'
if os.path.exists(iconsDartPath):
    os.remove(iconsDartPath)

flutterFile = open(iconsDartPath, 'w')
flutterFile.write('''// DO NOT MANUALLY MODIFY THIS FILE
// created by Luna Gao

class AtndIcons {''')

generateIcons(flutterFile, filePath, "fill")
generateIcons(flutterFile, filePath, "outline")
generateIcons(flutterFile, filePath, "twotone")

flutterFile.write('''
  static String getAntdIcons(String iconName, IconsType type) {
    String returnValue;
    switch (type) {
      case IconsType.fill:
        returnValue = _iconsFill[iconName];
        break;
      case IconsType.outline:
        returnValue = _iconsOutline[iconName];
        break;
      case IconsType.twotone:
        returnValue = _iconsTwotone[iconName];
        break;
    }
    if (returnValue == null) {
      returnValue = _iconsOutline['question'];
    }
    return returnValue;
  }
}

enum IconsType {
  fill,
  outline,
  twotone,
}

''')
flutterFile.close()     

