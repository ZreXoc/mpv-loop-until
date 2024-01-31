# mpv-loopuntil
## Usage
Loop the video until a specified amount of time.

the video shorter than `minDuriation` will be looped.

e.g. if `minDuriation=50` and the length of the video is 15s, it will be looped for 3 times, that's 15*(1+3)=60s.

Add `script-opts=loopuntil-minDuriation=<time>` to your mpv.conf to change `minDuriation`(default is 50).

## Why
I'm using [mpvpaper](https://github.com/GhostNaN/mpvpaper) and need a script to loop the wallpapers downloaded from wallpaper engine.


