#!/usr/bin/env python
# -*- coding: utf-8 -*-

# This script is a simple wrapper which prefixes each i3status line with custom
# information. It is a python reimplementation of:
# http://code.stapelberg.de/git/i3status/tree/contrib/wrapper.pl
#
# To use it, ensure your ~/.i3status.conf contains this line:
#     output_format = "i3bar"
# in the 'general' section.
# Then, in your ~/.i3/config, use:
#     status_command i3status | ~/i3status/contrib/wrapper.py
# In the 'bar' section.
#
# In its current version it will display the cpu frequency governor, but you
# are free to change it to display whatever you like, see the comment in the
# source code below.
#
# © 2012 Valentin Haenel <valentin.haenel@gmx.de>
#
# This program is free software. It comes without any warranty, to the extent
# permitted by applicable law. You can redistribute it and/or modify it under
# the terms of the Do What The Fuck You Want To Public License (WTFPL), Version
# 2, as published by Sam Hocevar. See http://sam.zoy.org/wtfpl/COPYING for more
# details.

import sys
import json
import subprocess
import re
numbers = re.compile('\d+(?:\.\d+)?')


def get_governor():
    """ Get the current governor for cpu0, assuming all CPUs use the same. """
    with open('/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor') as fp:
        return fp.readlines()[0].strip()

def print_line(message):
    """ Non-buffered printing to stdout. """
    sys.stdout.write(message + '\n')
    sys.stdout.flush()

def read_line():
    """ Interrupted respecting reader for stdin. """
    # try reading a line, removing any extra whitespace
    try:
        line = sys.stdin.readline().strip()
        # i3status sends EOF, or an empty line
        if not line:
            sys.exit(3)
        return line
    # exit on ctrl-c
    except KeyboardInterrupt:
        sys.exit()

if __name__ == '__main__':
    # Skip the first line which contains the version header.
    print_line(read_line())

    # The second line contains the start of the infinite array.
    print_line(read_line())

    while True:
        line, prefix = read_line(), ''
        # ignore comma at start of lines
        if line.startswith(','):
            line, prefix = line[1:], ','

        j = json.loads(line)

#       # Files with the output of utimer:
        tfile="/home/sh/s/sounds/outbash"
        tfile2="/home/sh/s/sounds/outpomo"
        tfile3="/home/sh/s/sounds/outpause"

        def rtime(tfile, color):
            try:
                with open(tfile, "r") as f:
                    # last line of the file
                    try:
                        t=f.readlines()[-1]
                    except IndexError:
                        t="O"
            except IOError:
                t="O"
            # hack
            # Utime seems to add a \n(^M?); at the end 
            # We use it as a way to check that the timer has stopped
            # When it stops, a \n is added.
            if "\n" not in t:
                if t!="O":
                    to=t.split("ing:")[1]
                    j.insert(0, {'full_text': '%s' % to, 'color':'%s'%color})

        tcolor1="#FF0F02" 
        tcolor2="#FFFFFF" 
        tcolor3="#FA0FF2" 

        rtime(tfile, tcolor1)
        rtime(tfile3, tcolor3)
        rtime(tfile2, tcolor2)

        # insert information into the start of the json, but could be anywhere
        # CHANGE THIS LINE TO INSERT SOMETHING ELSE
        #j.insert(0, {'full_text' : '%s' % get_governor(), 'name' : 'gov'})

        # Sun 17 Feb 2019 12:39:39 PM CET 
        # Adding currently active TW command

        bashCommand = "task a | sed '4!d'"
        bashOutput = subprocess.check_output(['bash','-c', bashCommand]).decode('utf-8').strip('\n')

        j.insert(0, {'full_text' : '%s' % bashOutput, 'name' : 'gov'})

        # and echo back new encoded json
        print_line(prefix+json.dumps(j))

