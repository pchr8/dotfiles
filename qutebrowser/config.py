#mG https://github.com/qutebrowser/qutebrowser/blob/master/doc/help/configuring.asciidoc

config.bind(',l', 'set tabs.position left')
config.bind(',r', 'set tabs.position right')
config.bind(',t', 'set tabs.position top')

config.bind(",j", "set content.javascript.enabled true")
config.bind(",J", "set content.javascript.enabled false")

config.bind(",T", "set tabs.show multiple")
config.bind(",n", "set tabs.show switching")
config.bind(",h", "set tabs.show never")

config.bind(",o", "spawn --userscript outline.sh")
config.bind(",m", "spawn mpv {url} --vid no")

c.url.searchengines = {'ss': 'https://startpage.com/do/search?query={}', 
        'g': 'https://google.com/search?q={}', 
        'G': 'https://google.com/search?btnI=1&q={}', 
        'c': 'http://dict.cc/?s={}', 
        'DEFAULT': 'https://duckduckgo.com/?q={}', 
        'd': 'https://en.wiktionary.org/wiki/Special:Search?search={}',
        'w': 'https://en.wikipedia.org/wiki/Special:Search?search={}',
        'y': 'https://youtube.com/results?search_query={}'
        }

mono = '10pt monospace'
small_mono = '9pt monospace'

# c.hints.mode = 'number'
c.hints.mode = 'letter'
c.hints.chars = 'auhtns'

c.auto_save.session = True

c.tabs.width='10%'

# Numbers to tabs

config.bind('1', 'tab-focus 1')
config.bind('2', 'tab-focus 2')
config.bind('3', 'tab-focus 3')
config.bind('4', 'tab-focus 4')
config.bind('5', 'tab-focus 5')
config.bind('6', 'tab-focus 6')
config.bind('7', 'tab-focus 7')
config.bind('8', 'tab-focus 8')
config.bind('9', 'tab-focus 9')
config.bind('0', 'tab-focus 10')
config.bind('<Alt-1>', 'tab-focus 11')
config.bind('<Alt-2>', 'tab-focus 12')
config.bind('<Alt-3>', 'tab-focus 13')
config.bind('<Alt-4>', 'tab-focus 14')
config.bind('<Alt-5>', 'tab-focus 15')
config.bind('<Alt-6>', 'tab-focus 16')
config.bind('<Alt-7>', 'tab-focus 17')
config.bind('<Alt-8>', 'tab-focus 18')
config.bind('<Alt-9>', 'tab-focus 19')
config.bind('<Alt-0>', 'tab-focus -1')

# config.bind('A', 'hint all tab-bg')
config.bind('A', 'hint all tab-bg --rapid')

config.bind('a', 'set-cmd-text -s :open -t')
config.bind('tw', 'set-cmd-text -s :open -w')

config.bind('e', 'open-editor')

config.bind('tg', 'set-cmd-text -s :tab-give')

config.bind('>', 'tab-move +')
config.bind('<', 'tab-move -')

config.bind('<Ctrl-P>', 'tab-pin;; tab-move 1')
config.bind('<Ctrl-I>', 'download-clear')

config.bind('<Ctrl-L>', 'set tabs.width 10%;; set tabs.favicons.scale 0.8;; set tabs.indicator.width 0;;set tabs.title.format {index}:{current_title}')
config.bind('<Ctrl-R>', 'set tabs.width 20%;; set tabs.favicons.scale 1;; set tabs.indicator.width 2;;set tabs.title.format {audio}{index}: {current_title}')

c.tabs.pinned.frozen = False
c.tabs.title.format_pinned = "{current_title}"

c.tabs.background = True

config.bind('ym', 'spawn --userscript yank.py')
config.bind('yw', 'spawn --userscript yank_w.py')
config.bind('yw', 'yank inline "[{url} {title}]"')

config.bind('B', 'spawn --userscript open_fiamma_page.py')
config.bind('T', 'hint inputs --first;; later 20 leave-mode;; later 20 open-editor')

#c.editor.command = ['terminator', '-e', '\'vim {}\'']
#c.editor.command = ['terminator', '-e', 'vim {}']

config.bind('E', 'set-cmd-text -s :edit-url')
