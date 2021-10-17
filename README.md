My precious.

## Troubleshooting

### Tmux

- When shortcuts do not work:
    System Preferences - > Keyboard - Shortcut -> Input Source -> uncheck "select the previous input source"
- Run `ctrl-space + I`

### NVIM

- Run `:UpdateRemotePlugins`
- Run `:checkhealth`
- Run `:PlugInstall`

#### Solargraph

- If it complains about now being able to find Gemfile or .bundle directory,
  that's because: either it has the useBundler set to true and nvim tries to
  open another zsh session, so load things in the `.zprofile` or just install
  the gem manually and set the useBundler to false.
