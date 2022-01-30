# tmux-mxc
<p align="center">
  <img src="./assets/2022-01-29-163127_318x127_scrot.png">
</p>

dark tmux theme, with random colors from mxcolr project

<p align="center">
  <img src="./assets/2022-01-30-101819_2560x1080_scrot.png">
</p>

the mxc project generate the `tmux.mx` file and re-source the `tmuxtheme` file
![mxcolr](./assets/gifcast_220130114850.gif)

Usage
=====
```
cp ./tmux ~/.config/tmux -r
```

```
tmux -f ~/.config/tmux/.tmux.conf -T 256 new-session\; attach \; source-file ~/.config/tmux/meta.min.tmuxtheme
```
## The theme file `tmux.mx` is generated by [mxcolr](https://github.com/metaory/mxcolr)

TODO: write readme
