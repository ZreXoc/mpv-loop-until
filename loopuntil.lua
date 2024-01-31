-- Script home: https://github.com/ZreXoc/mpv-loopuntil
-- the video shorter than {minDuriation} will be looped.
-- e.g. if minDuriation=50 and the length of the video is 15s, it will be looped for 3 times, that's 15*(1+3)=60s.
-- add script-opts=loopuntil-minDuriation=<time> to your mpv.conf to change minDuriation.

require 'mp.options'

function getOption()
    local options = {minDuriation=50}
    read_options(options)
    minDuriation = options.minDuriation
    print(minDuriation)
end

function set_loop()
    local duration = mp.get_property_native("duration")
    if not duration then
        return
    end
    mp.set_property_native("loop-file", math.floor(minDuriation / duration))
end

getOption()
mp.register_event("file-loaded", set_loop)
