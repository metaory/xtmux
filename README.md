XTMUX
=====

<div align=center>
  <img src=".github/assets/sbg.png" width="96px" />
  <img src=".github/assets/wbg.png" width="96px" />
  <img src=".github/assets/ebg.png" width="96px" />
</div>


<p align="center">
  <img src="./.github/assets/2405_31_061530-full.png" />
</p>

<p align="center">
  <img src="./.github/assets/2405_31_061500-line.png" />
</p>

---

ENVIRONMENT
===========

Defaults:
```sh
export TMUX_WIN_ICO="⛛ "
export TMUX_SES_ICO="✱ "
```

<details>
  <summary>
    <h2> Older </h2>
  </summary>

  <p align="center">
    <img src=".github/assets/2022-01-30-101819_2560x1080_scrot.png" />
  </p>

  <p align="center">
    <img src=".github/assets/2022-01-30-162046_734x304_scrot.png" />
  </p>

  <p align="center">
    <img src=".github/assets/2022-01-31-155740_1017x271_scrot.png" />
  </p>

  <p align="center">
    <img src=".github/assets/2022-01-31-155810_899x273_scrot.png" />
  </p>
</details>
<p align="center">
  <img src=".github/assets/2022-01-29-163127_318x127_scrot.png"/>
</p>

---

> [!Caution]
> Make sure
>
> - Backup `~/.config/tmux`
> - Remove if `~/.tmux.conf` exist
> - Remove if other related exist


# Installation

- CLONE
- LINK


```ex
# Clone the repo
git clone --recursive git@github.com:metaory/xtmux.git

# Link it
ln -svf $PWD/xtmux/tmux ~/.config/tmux

# new tmux session with no arguments should work!
tmux

# install plugins on first run (optional)
# > Press prefix + I (capital i, as in Install) to fetch the plugin.
# eg. C-s + I

```
> [!Important]
> the theme file is from
>
> - [colors.tmux](tmux/colors.tmux) template [confsubst](https://github.com/metaory/confsubst/blob/master/templates/colors.tmux)

---

## License

[MIT](LICENSE)
