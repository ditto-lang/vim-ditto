# vim-ditto

[![CI](https://github.com/ditto-lang/vim-ditto/actions/workflows/ci.yaml/badge.svg)](https://github.com/ditto-lang/vim-ditto/actions/workflows/ci.yaml)

Provides basic support for `.ditto` files.

For richer syntax highlighting, there is a [tree-sitter] grammar available over at 👉 [tree-sitter-ditto].

## Installing

- [Vim 8 packages](http://vimhelp.appspot.com/repeat.txt.html#packages)
  - `git clone https://github.com/ditto-lang/vim-ditto.git ~/.vim/pack/plugins/start/vim-ditto`
- [Neovim packages](https://neovim.io/doc/user/repeat.html#packages)
  - `git clone https://github.com/ditto-lang/vim-ditto.git ~/.local/share/nvim/site/pack/plugins/start/vim-ditto`
- [Pathogen](https://github.com/tpope/vim-pathogen)
  - `git clone https://github.com/ditto-lang/vim-ditto.git ~/.vim/bundle/vim-ditto`
- [vim-plug](https://github.com/junegunn/vim-plug)
  - `Plug 'ditto-lang/vim-ditto'`
- [Vundle](https://github.com/VundleVim/Vundle.vim)
  - `Plugin 'ditto-lang/vim-ditto'`

## Developing

I find it helpful to start up vim with no other plugins loaded,
which you can do like so:

```sh
vim -u <(echo set rtp+=.)
```

To generate/run the tests you'll need [testing.vim] installed.
Clone the repo and add the root `tvim` script to your `$PATH`.

Run the tests with:

```sh
tvim test test/*_test.vim
```

And (re-)generate the tests with:

```sh
for f in test/*.ditto; do tvim gen-syn $f > test/$(basename $f .ditto)_test.vim; done
```

<!--
git clone https://github.com/arp242/testing.vim.git
for f in test/*.ditto; do ./testing.vim/tvim gen-syn $f > test/$(basename $f .ditto)_test.vim; done
./testing.vim/tvim test test/*_test.vim
-->

[testing.vim]: https://github.com/arp242/testing.vim
[tree-sitter]: https://tree-sitter.github.io/tree-sitter/
[tree-sitter-ditto]: https://github.com/ditto-lang/tree-sitter-ditto
