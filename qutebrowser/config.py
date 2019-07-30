# https://github.com/qutebrowser/qutebrowser/blob/master/doc/help/configuring.asciidoc

config.bind(',l', 'set tabs.position left')
config.bind(',t', 'set tabs.position top')

config.bind(",j", "set content.javascript.enabled true")
config.bind(",J", "set content.javascript.enabled false")

config.bind(",t", "set tabs.show multiple")
config.bind(",T", "set tabs.show switching")
config.bind(",h", "set tabs.show never")

c.url.searchengines = {'DEFAULT': 'https://startpage.com/do/search?query={}', 
        'g': 'https://google.com/search?q={}', 
        'c': 'http://dict.cc/?s={}', 
        'd': 'https://duckduckgo.com/?q={}', 
        'd': 'https://en.wiktionary.org/wiki/Special:Search?search={}',
        'w': 'https://en.wikipedia.org/wiki/Special:Search?search={}',
        'y': 'https://youtube.com/results?search_query={}'
        }

mono = '10pt monospace'
small_mono = '9pt monospace'

c.hints.mode = 'number'

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
