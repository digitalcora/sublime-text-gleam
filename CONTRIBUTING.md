# Contributing

Contributions are welcome!

For non-trivial changes, please open a GitHub issue first to discuss. Note that
to keep this project easy to maintain, I'm unlikely to accept new features if
the same functionality can already be achieved with existing Gleam and Sublime
Text tools. For a good example, see **Formatting** in the [README](README.md).

### Conduct

Contributors are expected to adhere to the [Gleam Code of Conduct][coc].
The point of contact for this project is me, **@digitalcora**; to contact me
privately, use the address on [my website][dc].

[coc]: https://github.com/gleam-lang/gleam/blob/main/CODE_OF_CONDUCT.md
[dc]: https://digitalcora.net/

### Workflow

Fork this repo on GitHub and use a pull request to propose a change.

When working on this (or any) Sublime Text package, you can symlink the repo
directory into your local "Packages" directory (Preferences → Browse Packages).
Files here will override the corresponding files in the published package from
Package Control, so you don't have to remove it. Sublime will also auto-reload
these files when they change.

See also the Sublime Text [Package Development][stdocs] documentation.

[stdocs]: https://www.sublimetext.com/docs/#package-development
