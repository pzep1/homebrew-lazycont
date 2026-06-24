# homebrew-lazycont

Homebrew tap for [lazycont](https://github.com/pzep1/lazycont) — a lazydocker-style
terminal UI for Apple's [`container`](https://github.com/apple/container) CLI.

## Install

```sh
brew install pzep1/lazycont/lazycontainer
```

This taps `pzep1/homebrew-lazycont` automatically and builds lazycont from the
latest tagged release. To track the development branch instead:

```sh
brew install --HEAD pzep1/lazycont/lazycontainer
```

The formula depends on Homebrew's Apple `container` package. After installing,
start the container system service before launching the TUI:

```sh
brew services start container
# or, for the current session only:
container system start
```

## License

The lazycont project is released under the GNU General Public License v3.0 or
later. See the [main repository](https://github.com/pzep1/lazycont/blob/main/LICENSE).
