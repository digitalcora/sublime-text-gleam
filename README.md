# Sublime Text + Gleam

✨ [Gleam](https://gleam.run) syntax support for Sublime Text.

Provides syntax highlighting and "toggle comment" support
(<kbd>Ctrl/Cmd</kbd>+<kbd>/</kbd>).


## Installation

This package is available on
[Package Control](https://packagecontrol.io/installation). To install:

1. Open the command palette (<kbd>Ctrl/Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>)
2. Select **Package Control: Install Package**
3. Select **Gleam**


## Formatting

This package does not provide code formatting, but you can easily set this up
using the [**Fmt**](https://packagecontrol.io/packages/Fmt) package. Follow the
instructions to install it and open the package settings, then add this rule:

```json
{
  "rules": [
    {
      "selector": "source.gleam",
      "cmd": ["gleam", "format", "--stdin"],
      "format_on_save": true,
      "merge_type": "diff",
    },
  ],
}
```

With `"format_on_save": true`, Gleam code will be formatted whenever you save.
To instead format on demand, use **Fmt: Format Buffer** in the command palette.
See the Fmt README for instructions on binding this to a key combo.

The above `cmd` should work if you have the `gleam` binary in your path, in the
same environment Sublime Text is running on. Other examples:

* with Gleam installed using ASDF:
  `["~/.asdf/shims/gleam", "format", "--stdin"]`
* with Sublime Text on Windows and Gleam on WSL:
  `["wsl", "gleam", "format", "--stdin"]`


## Compatibility

This package is developed for Sublime Text 4+, and is not available in Package
Control on older versions. It can be installed manually in Sublime Text 3, but
this is unsupported, and bugs that only appear in ST3 will not be fixed.

### Manual Installation

1. Download the `.zip` for the desired version from the GitHub **Releases** page
2. Rename this file (without unzipping it) to `Gleam.sublime-package`
3. Place the file in your Sublime Text "Installed Packages" directory

"Installed Packages" can be found using Preferences → Browse Packages within
Sublime Text (go up one level from the directory this opens).
