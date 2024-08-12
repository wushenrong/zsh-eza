# zsh-eza

A zsh aliases plugin for [eza](https://github.com/eza-community/eza),
a replacement for exa.

## Differences between zsh-eza and zsh-exa

Both of the plugins are mostly the same except the removal of setting a default
`TIME-STYLE`, eventual decapitation of using command-line options in favor of
a [configuration file](https://github.com/eza-community/eza/issues/139), and
renaming of aliases.

### Renamed Aliases

There are conflicted and poorly named aliases in the old zsh-exa plugin, this
plugin renames them.

| Old Aliases | New Aliases |
|-------------|-------------|
| `l.`        | `lh`        |
| `lS`        | `lc`        |

## Usage

To use it, install [`eza`](https://github.com/eza-community/eza).

Then clone this repository into the custom plugins directory as `eza` of your
zsh plugin manager which is `$ZSH_CUSTOM`, the following is for
[Oh My Zsh](https://ohmyz.sh/) which is `~/.oh-my-zsh/custom/plugins`.

```bash
git clone https://github.com/wushenrong/zsh-eza.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/eza
```

Finally, add eza to the plugins array of your zshrc file:

```bash
plugins=(... eza)
```

### Configuration Options

| Environment Variables         | Description                                                                               |
|-------------------------------|-------------------------------------------------------------------------------------------|
| `TIME-STYLE`                  | Set the time format used for long view. No longer defaults to `iso-long` and decapitated. |
| `EZA_EXA_LEGACY`              | Use the exa command line aliases instead of the config file for eza.                      |
| `EZA_ENABLE_SORT_ALIASES`     | Enable aliases for filtering options based on which field to sort by.                     |
| `EZA_ENABLE_EXTENDED_ALIASES` | Enable aliases for all files, links and extended attributes.                              |

## License

This plugin is licensed under the MIT License using SPDX.
