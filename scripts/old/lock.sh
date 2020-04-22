#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
C='#7a99cc55'  # default
D='#ff00ffcc'  # default
D='#7a99ccff'  # default
#T='#ee00eeee'  # text
T='#7a99ccff'  # text
W='#880000bb'  # wrong
V='#bb00bbbb'  # verifying

I='/home/sh/s/bg/mss.png'

/usr/bin/i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 1            \
--blur 5              \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
\
--image=$I    
#--keylayout 0         \


# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
