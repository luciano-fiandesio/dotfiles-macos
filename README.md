# dotfiles

My MacOS only configuration files.

## Install brew

https://brew.sh/

## Install brew formulae and casks

`brew/setup.sh`

## Git

`git/setup.sh`

## Development

### Install asdf

```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2


mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions
```

Check the [asdf installation guide](https://asdf-vm.com/guide/getting-started.html#_1-install-dependencies) for updated instructions.

### Install other development dependencies

Setup `direnv`

```
./dev/setup.sh
```

### java

```
dev/java/setup.sh
```

This will install `sdkman` <https://sdkman.io>.
Install the required JVM and tooling.


### python

```
./dev/python/setup.sh
```

### node

```
dev/node/setup.sh
```
