# dotfiles

* Dependencies 
```
sudo pacman -S dmenu xclip
```

* Keybinds
```
bindsym $mod+shift+u exec --no-startup-id gpg -d Documents/usernames.txt.gpg | dmenu -nb '#1D1D1D' -nf '#aaaaaa' -sb '#8a7b70' -sf '#1D1D1D' -fn 'Ohsnap:pixelsize=12' -l 15 | awk '{print $1}' | xclip -selection c
```
Decrypts contents of file holding all usernames, spawns a selection menu using dmenu and copies the selection to the clipboard
```
bindsym $mod+ctrl+s exec --no-startup-id cat Documents/symbols_list.txt | dmenu -nb '#1D1D1D' -nf '#aaaaaa' -sb '#8a7b70' -sf '#1D1D1D' -fn 'Ohsnap:pixelsize=12' -l 15 | awk '{print $1}' | cut -f1 -d "-" | xclip -selection c
```
As above except for special unicode characters

```
bindsym $mod+ctrl+d exec --no-startup-id grep 'emph' ~/Documents/repositories/LaTeX_personal_dictionary/Words.tex | sed 's/.*{//' | sed 's/.$//' | sort | dmenu -nb '#1D1D1D' -nf '#aaaaaa' -sb '#8a7b70' -sf '#1D1D1D' -fn 'Ohsnap:pixelsize=12' -l 15 | xargs -I {} ~/Documents/repositories/LaTeX_personal_dictionary/addword.sh {} && zathura ~/Documents/repositories/LaTeX_personal_dictionary/Words.pdf
```
Uses dmenu as a preview for pre-existing words in my LaTeX dictionary project, passes the entry as ninput to the script if it doesn't already exist

```bindsym $mod+ctrl+r exec --no-startup-id urxvt -e ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -i :0.0+0,416 -c:v libx264 -crf 0 -preset ultrafast -color_range 2 -f alsa -ac 1 -i hw:3 ~/Videos/"$(date +"%Y_%m_%d_%I_%M")".mp4```
Losslessly begins recording video and audio output of primary monitor through ffmpeg

```bindsym $mod+shift+v exec urxvt -e "arecord -D hw:2,0 -i -f S24_3LE -c 2 ~/Music/"$(date +"%Y_%m_%d_%I_%M")".wav; ls -lrt ~/Music/ | tail -n1 | sed 's/.*\ //' | xargs -I {} ffmpeg -i ~/Music/{} -ac 1 ~/Music/"$(date +"%Y_%m_%d_%I_%M")".mp3 && ls -lrt ~/Music/ | grep ".wav" | tail -n1 | sed 's/.*\ //' | xargs -I {} rm ~/Music/{}"
```
Losslessly begins recording audio from microphone input, converts it to mp3 afterwards upon exit (which marks the end of the recording)

```bindsym $mod+shift+v exec mpv /dev/video0 --ontop=yes --snap-window --geometry='+10-30' --profile=low-latency --untimed
```
Spawns video player with webcam feed as its input, minimizes lag
![Page preview](./preview.png?raw=true "Latest screenshot of the page") 
