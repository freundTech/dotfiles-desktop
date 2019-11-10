install() {
    cp --parents $1 $HOME
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
}

ui() {
    bspwm
    sxhkd
	bar
    twmn
    compton
    xresources
	theme
	background
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

compton() {
    install .compton.conf
}

xresources() {
    install .Xresources
}

theme() {
	install .config/numix-folders
	echo "Trying to set up numix folders. This might need root permissions"
	numix-folders -p
}

background() {
	install .local/share/backgrounds/colorful-triangles-background.jpg
}

keyboard
shell
vim
ui
