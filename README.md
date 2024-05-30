XTMUX
=====

<div align=center>
  <img src=".github/assets/sbg.png" width="128px" />
  <img src=".github/assets/wbg.png" width="128px" />
  <img src=".github/assets/ebg.png" width="128px" />
</div>


<p align="center">
  <img src="./.github/assets/2405_31_061500-full.png" />
</p>

<p align="center">
  <img src="./.github/assets/2405_31_061500-line.png" />
</p>

---

<details>
  <summary>
    <h2>
      <img src="./.github/assets/2022-01-29-163127_318x127_scrot.png"/>
      Old
    </h2>
  </summary>

  <p align="center">
    <img src="./.github/assets/2022-01-30-101819_2560x1080_scrot.png" />
  </p>

  <p align="center">
    <img src="./.github/assets/2022-01-30-162046_734x304_scrot.png" />
  </p>

  <p align="center">
    <img src="./.github/assets/2022-01-31-155740_1017x271_scrot.png" />
  </p>

  <p align="center">
    <img src="./.github/assets/2022-01-31-155810_899x273_scrot.png" />
  </p>

</details>


> [!Caution]
> Make sure
>
> - Backup ~/.config/tmux
> - Remove if ~/.tmux.conf exist
> - Remove if other related exist


# Installation

- clone repo
- link it

```ex
# Clone the repo
git clone git@github.com:metaory/xtmux.git

# Link it
ln -sv $PWD/xtmux/tmux ~/.config/tmux

# Start new tmux session with no arguments
tmux
```
> [!Info]
> the theme file is from
>
> - colors.tmux template [confsubst](https://github.com/metaory/confsubst/blob/master/templates/colors.tmux)

---

## License

[MIT](LICENSE)
