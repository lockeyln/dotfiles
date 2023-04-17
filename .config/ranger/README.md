# README

Dependencies:

```
$ yay -S ueberzug
$ yay -S ffmpegthumbnailer
$ yay -S ffmpeg
$ yay -S mediainfo
$ yay -S highlight
$ yay -S fzf
$ yay -S trash-cli
$ yay -S atool
$ yay -S poppler
$ yay -S catdoc
$ yay -S docx2txt
$ yay -S aur/python2-xlsx2csv
```

Icons support:

```
$ git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```

Custom mapping:

```
# map F fzf_select
# map M console mkcd%space
map cw eval fm.execute_console("bulkrename") if fm.thisdir.marked_items else fm.open_console("rename ")
map DD shell gio trash %s
map M console mkdir%space
map T console touch%space
map C console compress%space
map X console extract_here%space
map gG shell lazygit
map gN cd ~/.config/nvim
map gP cd ~/project/
map gD cd ~/Documents/
map gO cd ~/Downloads/
map :  console shell%space
```

