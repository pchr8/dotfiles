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
