DIR="$HOME/.dotfiles"

install() {
    mkdir --parents $(dirname "${HOME}/$1")
    ln -sf "${DIR}/$1" "${HOME}/$1"
}

keyboard() {
    install .Xmodmap
}

shell() {
    install .bashrc
    install .profile
}

vim() {
    install .vimrc
    install .vim/pack/dotfiles
}

ui() {
    bspwm
    sxhkd
    bar
    twmn
    picom
    xresources
    theme
    background
    rofi
}

bspwm() {
    install .config/bspwm/bspwmrc
    install .config/bspwm/bspwm_killall
}

sxhkd() {
    install .config/sxhkd/sxhkdrc
}

bar() {
    install .config/panel/panel
    install .config/panel/colors
    install .config/panel/config
    install .config/panel/popup_cal
    install .config/panel/popup_sound
    install .config/panel/popup_power
    install .config/panel/content
}

twmn() {
    install .config/twmn/twmn.conf
}

picom() {
    install .picom.conf
}

xresources() {
    install .Xresources
}

theme() {
    install .config/numix-folders
    echo "Trying to set up numix folders. This might need root permissions"
    #numix-folders -p
}

background() {
    install .local/share/backgrounds/colorful-triangles-background.jpg
}

rofi() {
    install .config/rofi/config.rasi
    install .config/rofi/themes/dmenu.rasi
}

bin() {
    install .bin/fixbar
    install .bin/rxvt
}

keyboard
shell
vim
ui
bin
