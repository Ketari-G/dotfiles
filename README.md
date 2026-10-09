### Ketari's dotfiles, aka my linux rice/config

### Currently using:
- Arch Linux
- Hyprland
 
*(to track what WM to use specific dotfiles with)*

Made by having all the og config files in the repo and symlinking them to their respective locations in $HOME/ cuz I didnt figure out an easier option and I dont want to use software to do it for me

---

Usage instructions:
1. `git clone https://github.com/Ketari-G/dotfiles.git`
2. `cd dotfiles/`
3. `chmod +x symlink.sh`
4. `./symlink.sh`

symlink.sh creates backups to your existing config files (assuming same name), then creates symlinks in $HOME corresponding to the correct files from the git repo

once installed, all modifications to .config/ files and the likes should be done in the git repo folder (~/.dotfiles/) instead of in the actual $HOME/ directories

Optional:
5. If using vesktop, go into settings -> vencord settings -> themes and turn on "Ketari's Simple Theme"
6. In steam with millenium, go into steam -> millenium -> themes and enable "Simple Colors". *note: steam color changes require a steam restart*

Both require running "applywal.sh" at least once (or rather, changing a wallpaper with waypaper)
