# Sublime Text + Gleam

✨ [Gleam](https://gleam.run) syntax support for Sublime Text.


## Installation

This package is available on
[Package Control](https://packagecontrol.io/installation). To install:

1. Open the command palette (<kbd>Ctrl/Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>)
2. Select **Package Control: Install Package**
3. Select **Gleam**

Files with the `.gleam` extension should now be syntax-highlighted.


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


## Contributing

Contributions are welcome! For non-trivial changes, please open an issue first
to discuss.

Note that to keep the project easy to maintain, I'm unlikely to approve of new
features if the same functionality can already be achieved with existing Gleam
and Sublime Text tools. For a good example of this, see **Formatting** above.

Interactions on this repo should abide by the [Gleam Code of Conduct][coc]. To
contact me privately about a conduct issue, use the address on [my website].

[coc]: https://github.com/gleam-lang/gleam/blob/main/CODE_OF_CONDUCT.md
[my website]: https://digitalcora.net/

### Development

When working on this (or any) package, you can symlink the repo directory into
your local Sublime Text "Packages" directory (Preferences → Browse Packages).
Files here will override the corresponding files in the published package from
Package Control, so you don't have to remove it. Sublime will also auto-reload
these files when they change.

See also the Sublime Text [Package Development][stdocs] documentation.

[stdocs]: https://www.sublimetext.com/docs/#package-development
