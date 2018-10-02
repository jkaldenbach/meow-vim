const palette = {
  blue: '#63a4e9',
  blueDark: '#003e7b',
  indigo: '#6610f2',
  purple: '#6f42c1',
  purpleDark: '#361f60',
  pink: '#e83e8c',
  red: '#dc3545',
  orange: '#fd7e14',
  yellow: '#ffc107',
  green: '#28a745',
  teal: '#20c997',
  tealDark: '#0a4231',
  cyan: '#17a2b8',
  white: '#ffffff',
  grayLight: '#d6d8db',
  gray: '#868e96',
  grayMedium: '#67737e',
  grayMediumDark: '#343a40',
  grayDark: '#22252a',
  primary: '#007bff',
  secondary: '#868e96',
  success: '#28a745',
  info: '#17a2b8',
  warning: '#ffc107',
  danger: '#dc3545',
  light: '#f8f9fa',
  dark: '#343a40',
}

const colorValues = exports.colorValues = {
  colors: {
    cyan: palette.cyan,
    blue: palette.blue,
    purple: palette.purple,
    pink: palette.pink,
    red: palette.red,
    orange: palette.orange,
    yellow: palette.yellow,
    green: palette.teal
  },
  grays: {
    gray0: '#1E272C',
    gray1: palette.grayDark,
    gray2: palette.grayMediumDark,
    gray3: palette.grayMedium,
    gray4: palette.gray,
    gray5: palette.grayLight,
    gray6: palette.light
  }
};

exports.default = colorValues;
const uiGroups = exports.uiGroups = Object.assign({
  userActionNeeded: palette.pink,
  userCurrentState: palette.orange,
  backgroundShade: palette.grayMediumDark,
  backgroundModified: palette.blueDark,
  background: palette.grayDark,
  foreground: palette.grayLight
}, colorValues.grays);

const syntaxGroups = exports.syntaxGroups = {
  constant: palette.blue,
  identifier: palette.grayLight,
  statement: palette.orange,
  type: palette.gray,
  global: palette.yellow,
  emphasis: palette.pink,
  special: palette.cyan,
  trivial: palette.grayMedium
};

const versionControlGroups = exports.versionControlGroups = {
  added: palette.teal,
  addedBg: palette.blueDark,
  modified: palette.orange,
  modifiedBg: palette.grayMediumDark,
  removed: palette.pink,
  renamed: palette.blue,
  diffTextBg: palette.grayDark
};

const ansiGroups = exports.ansiGroups = {
  normal: {
    black: uiGroups.background,
    red: palette.pink,
    green: palette.teal,
    yellow: palette.yellow,
    blue: palette.blue,
    magenta: palette.purple,
    cyan: palette.cyan,
    white: uiGroups.foreground
  },
  bright: {
    black: palette.gray,
    red: palette.orange,
    green: palette.teal,
    yellow: palette.yellow,
    blue: palette.blue,
    magenta: palette.pink,
    cyan: palette.cyan,
    white: palette.grayLight
  }
};
