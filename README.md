# dotfiles

Execute the following commands:

```shell
git clone --recurse-submodules https://github.com/zhukovdm/dotfiles.git
cd dotfiles && make
```

Configure colored prompt by modifying `PS1` definition in `.bashrc`.

```shell
PS1="${debian_chroot:+($debian_chroot)}\[\033[1;32m\]\u@\h\033[m \[\033[1;34m\]\w\033[m\[\033[1;33m\]\$(git rev-parse --abbrev-ref HEAD 2>/dev/null | sed '/./ s/.*/ (&)/')\033[m\n\$ "
```

Download monospaced fonts at
[tonsky/FiraCode](https://github.com/tonsky/FiraCode) and
[microsoft/cascadia-code](https://github.com/microsoft/cascadia-code).
