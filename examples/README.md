# Examples

Example code for testing the package. Currently just consists of examples
auto-extracted from the [Gleam language tour](https://gleam.run/book/tour/),
which are not committed. To extract them yourself:

1. Install [`codedown`](https://github.com/earldouglas/codedown)
2. Clone [`gleam-lang/website`](https://github.com/gleam-lang/website)
3. In the website repo, run:

```bash
for file in book-src/tour/*; do
  codedown gleam $'\n\n' < $file > examples/$(basename $file .md).gleam
done
```

(the output directory, specified here as `examples`, needs to exist first)
