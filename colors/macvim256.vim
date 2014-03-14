""" macvim256.vim: Port of the macvim theme for 256 color terminals.

"" Copyright (c) 2013 Chris Corbyn
""
"" Author:  Chris Corbyn <chris@w3style.co.uk>
"" URL:     https://github.com/d11wtq/macvim-theme.vim
"" Version: 1.0
""
"" This file is free software: you can redistribute it and/or modify
"" it under the terms of the GNU General Public License as published
"" by the Free Software Foundation, either version 3 of the License,
"" or (at your option) any later version.
""
"" This file is distributed in the hope that it will be useful, but
"" WITHOUT ANY WARRANTY; without even the implied warranty of
"" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
"" General Public License for more details.
""
"" You should have received a copy of the GNU General Public License
"" along with this file.  If not, see <http://www.gnu.org/licenses/>.

" all 256 colors available in 256 color terminals
let palette = {
      \   0: '#000000',   1: '#cd0000',   2: '#00cd00',   3: '#cdcd00',
      \   4: '#0000ee',   5: '#cd00cd',   6: '#00cdcd',   7: '#e5e5e5',
      \   8: '#7f7f7f',   9: '#ff0000',  10: '#00ff00',  11: '#ffff00',
      \  12: '#5c5cff',  13: '#ff00ff',  14: '#00ffff',  15: '#ffffff',
      \  16: '#000000',  17: '#00005f',  18: '#000087',  19: '#0000af',
      \  20: '#0000d7',  21: '#0000ff',  22: '#005f00',  23: '#005f5f',
      \  24: '#005f87',  25: '#005faf',  26: '#005fd7',  27: '#005fff',
      \  28: '#008700',  29: '#00875f',  30: '#008787',  31: '#0087af',
      \  32: '#0087d7',  33: '#0087ff',  34: '#00af00',  35: '#00af5f',
      \  36: '#00af87',  37: '#00afaf',  38: '#00afd7',  39: '#00afff',
      \  40: '#00d700',  41: '#00d75f',  42: '#00d787',  43: '#00d7af',
      \  44: '#00d7d7',  45: '#00d7ff',  46: '#00ff00',  47: '#00ff5f',
      \  48: '#00ff87',  49: '#00ffaf',  50: '#00ffd7',  51: '#00ffff',
      \  52: '#5f0000',  53: '#5f005f',  54: '#5f0087',  55: '#5f00af',
      \  56: '#5f00d7',  57: '#5f00ff',  58: '#5f5f00',  59: '#5f5f5f',
      \  60: '#5f5f87',  61: '#5f5faf',  62: '#5f5fd7',  63: '#5f5fff',
      \  64: '#5f8700',  65: '#5f875f',  66: '#5f8787',  67: '#5f87af',
      \  68: '#5f87d7',  69: '#5f87ff',  70: '#5faf00',  71: '#5faf5f',
      \  72: '#5faf87',  73: '#5fafaf',  74: '#5fafd7',  75: '#5fafff',
      \  76: '#5fd700',  77: '#5fd75f',  78: '#5fd787',  79: '#5fd7af',
      \  80: '#5fd7d7',  81: '#5fd7ff',  82: '#5fff00',  83: '#5fff5f',
      \  84: '#5fff87',  85: '#5fffaf',  86: '#5fffd7',  87: '#5fffff',
      \  88: '#870000',  89: '#87005f',  90: '#870087',  91: '#8700af',
      \  92: '#8700d7',  93: '#8700ff',  94: '#875f00',  95: '#875f5f',
      \  96: '#875f87',  97: '#875faf',  98: '#875fd7',  99: '#875fff',
      \ 100: '#878700', 101: '#87875f', 102: '#878787', 103: '#8787af',
      \ 104: '#8787d7', 105: '#8787ff', 106: '#87af00', 107: '#87af5f',
      \ 108: '#87af87', 109: '#87afaf', 110: '#87afd7', 111: '#87afff',
      \ 112: '#87d700', 113: '#87d75f', 114: '#87d787', 115: '#87d7af',
      \ 116: '#87d7d7', 117: '#87d7ff', 118: '#87ff00', 119: '#87ff5f',
      \ 120: '#87ff87', 121: '#87ffaf', 122: '#87ffd7', 123: '#87ffff',
      \ 124: '#af0000', 125: '#af005f', 126: '#af0087', 127: '#af00af',
      \ 128: '#af00d7', 129: '#af00ff', 130: '#af5f00', 131: '#af5f5f',
      \ 132: '#af5f87', 133: '#af5faf', 134: '#af5fd7', 135: '#af5fff',
      \ 136: '#af8700', 137: '#af875f', 138: '#af8787', 139: '#af87af',
      \ 140: '#af87d7', 141: '#af87ff', 142: '#afaf00', 143: '#afaf5f',
      \ 144: '#afaf87', 145: '#afafaf', 146: '#afafd7', 147: '#afafff',
      \ 148: '#afd700', 149: '#afd75f', 150: '#afd787', 151: '#afd7af',
      \ 152: '#afd7d7', 153: '#afd7ff', 154: '#afff00', 155: '#afff5f',
      \ 156: '#afff87', 157: '#afffaf', 158: '#afffd7', 159: '#afffff',
      \ 160: '#d70000', 161: '#d7005f', 162: '#d70087', 163: '#d700af',
      \ 164: '#d700d7', 165: '#d700ff', 166: '#d75f00', 167: '#d75f5f',
      \ 168: '#d75f87', 169: '#d75faf', 170: '#d75fd7', 171: '#d75fff',
      \ 172: '#d78700', 173: '#d7875f', 174: '#d78787', 175: '#d787af',
      \ 176: '#d787d7', 177: '#d787ff', 178: '#d7af00', 179: '#d7af5f',
      \ 180: '#d7af87', 181: '#d7afaf', 182: '#d7afd7', 183: '#d7afff',
      \ 184: '#d7d700', 185: '#d7d75f', 186: '#d7d787', 187: '#d7d7af',
      \ 188: '#d7d7d7', 189: '#d7d7ff', 190: '#d7ff00', 191: '#d7ff5f',
      \ 192: '#d7ff87', 193: '#d7ffaf', 194: '#d7ffd7', 195: '#d7ffff',
      \ 196: '#ff0000', 197: '#ff005f', 198: '#ff0087', 199: '#ff00af',
      \ 200: '#ff00d7', 201: '#ff00ff', 202: '#ff5f00', 203: '#ff5f5f',
      \ 204: '#ff5f87', 205: '#ff5faf', 206: '#ff5fd7', 207: '#ff5fff',
      \ 208: '#ff8700', 209: '#ff875f', 210: '#ff8787', 211: '#ff87af',
      \ 212: '#ff87d7', 213: '#ff87ff', 214: '#ffaf00', 215: '#ffaf5f',
      \ 216: '#ffaf87', 217: '#ffafaf', 218: '#ffafd7', 219: '#ffafff',
      \ 220: '#ffd700', 221: '#ffd75f', 222: '#ffd787', 223: '#ffd7af',
      \ 224: '#ffd7d7', 225: '#ffd7ff', 226: '#ffff00', 227: '#ffff5f',
      \ 228: '#ffff87', 229: '#ffffaf', 230: '#ffffd7', 231: '#ffffff',
      \ 232: '#080808', 233: '#121212', 234: '#1c1c1c', 235: '#262626',
      \ 236: '#303030', 237: '#3a3a3a', 238: '#444444', 239: '#4e4e4e',
      \ 240: '#585858', 241: '#626262', 242: '#6c6c6c', 243: '#767676',
      \ 244: '#808080', 245: '#8a8a8a', 246: '#949494', 247: '#9e9e9e',
      \ 248: '#a8a8a8', 249: '#b2b2b2', 250: '#bcbcbc', 251: '#c6c6c6',
      \ 252: '#d0d0d0', 253: '#dadada', 254: '#e4e4e4', 255: '#eeeeee',
      \ 'NONE': 'NONE',
      \ }

"" Avoid repeating colors by referring to them by name
fu! s:MacVimThemeHighlight(dict)
  let command = join([
        \ 'hi ',
        \ a:dict['higroup'],
        \ ' ',
        \ a:dict['vimtype'], a:dict['where'],
        \ '=',
        \ a:dict['color'],
        \ ' ',
        \ a:dict['vimtype'],
        \ '=',
        \ a:dict['style'],
        \ ], '')
  exe command
endf

"" keep everything under a function, so we can write cleaner code.
fu! s:MacVimThemeApply(palette)
  "" dark background colors
  let darkcolors = {
        \ 'NONE':             'NONE',
        \ 'black':            242,
        \ 'clean-white':      233,
        \ 'merlot':           93,
        \ 'deep-red':         124,
        \ 'deep-blue':        109,
        \ 'clean-blue':       25,
        \ 'light-blue':       26,
        \ 'pale-blue':        189,
        \ 'bright-blue':      100,
        \ 'pure-blue':        21,
        \ 'grey-blue':        24,
        \ 'pale-green':       83,
        \ 'grey-green':       29,
        \ 'dark-green':       29,
        \ 'black-green':      236,
        \ 'golden':           214,
        \ 'lavender':         93,
        \ 'hot-pink':         129,
        \ 'light-grey':       234,
        \ 'mid-grey':         0,
        \ 'dark-grey':        55,
        \ 'pale-red':         1,
        \ 'deep-pink':        89,
        \ }

  "" light background colors
  let lightcolors = {
        \ 'NONE':             'NONE',
        \ 'black':            0,
        \ 'clean-white':      15,
        \ 'merlot':           88,
        \ 'deep-red':         124,
        \ 'deep-blue':        20,
        \ 'clean-blue':       25,
        \ 'light-blue':       26,
        \ 'pale-blue':        189,
        \ 'bright-blue':      51,
        \ 'pure-blue':        21,
        \ 'grey-blue':        23,
        \ 'pale-green':       83,
        \ 'grey-green':       29,
        \ 'dark-green':       28,
        \ 'black-green':      236,
        \ 'golden':           208,
        \ 'lavender':         99,
        \ 'hot-pink':         93,
        \ 'light-grey':       255,
        \ 'mid-grey':         254,
        \ 'dark-grey':        245,
        \ 'pale-red':         210,
        \ 'deep-pink':        89,
        \ }

  " pick the best color palette for the background
  let colors = &background == 'dark' ? darkcolors : lightcolors

  " define colors and styles to be applied
  let groups = [
        \ [ 'Normal',              'bg', 'clean-white',      'none'      ],
        \ [ 'Normal',              'fg', 'black',            'none'      ],
        \ [ 'ColorColumn',         'bg', 'pale-red',         'none'      ],
        \ [ 'Comment',             'fg', 'deep-blue',        'none'      ],
        \ [ 'String',              'fg', 'grey-blue',        'none'      ],
        \ [ 'JavaScriptStrings',   'fg', 'grey-blue',        'none'      ],
        \ [ 'phpStringSingle',     'fg', 'grey-blue',        'none'      ],
        \ [ 'phpStringDouble',     'fg', 'grey-blue',        'none'      ],
        \ [ 'htmlString',          'fg', 'grey-blue',        'none'      ],
        \ [ 'Character',           'fg', 'golden',           'none'      ],
        \ [ 'Number',              'fg', 'golden',           'none'      ],
        \ [ 'Float',               'fg', 'golden',           'none'      ],
        \ [ 'Delimiter',           'fg', 'lavender',         'none'      ],
        \ [ 'StorageClass',        'fg', 'dark-green',       'bold'      ],
        \ [ 'Structure',           'fg', 'dark-green',       'bold'      ],
        \ [ 'Type',                'fg', 'dark-green',       'bold'      ],
        \ [ 'Identifier',          'fg', 'grey-green',       'none'      ],
        \ [ 'Keyword',             'fg', 'merlot',           'bold'      ],
        \ [ 'Constant',            'fg', 'golden',           'none'      ],
        \ [ 'Function',            'fg', 'grey-green',       'none'      ],
        \ [ 'Boolean',             'fg', 'deep-pink',        'none'      ],
        \ [ 'Operator',            'fg', 'merlot',           'bold'      ],
        \ [ 'Include',             'fg', 'clean-blue',       'none'      ],
        \ [ 'VertSplit',           'fg', 'dark-grey',        'none'      ],
        \ [ 'Visual',              'bg', 'pale-blue',        'none'      ],
        \ [ 'VisualNOS',           'bg', 'dark-grey',        'none'      ],
        \ [ 'Label',               'fg', 'merlot',           'bold'      ],
        \ [ 'Define',              'fg', 'clean-blue',       'none'      ],
        \ [ 'Macro',               'fg', 'clean-blue',       'none'      ],
        \ [ 'Conditional',         'fg', 'merlot',           'bold'      ],
        \ [ 'vimCommand',          'fg', 'merlot',           'bold'      ],
        \ [ 'vimVar',              'fg', 'grey-green',       'none'      ],
        \ [ 'Title',               'fg', 'light-blue',       'bold'      ],
        \ [ 'Special',             'fg', 'lavender',         'none'      ],
        \ [ 'Exception',           'fg', 'merlot',           'bold'      ],
        \ [ 'Statement',           'fg', 'merlot',           'bold'      ],
        \ [ 'PreProc',             'fg', 'light-blue',       'none'      ],
        \ [ 'LineNr',              'bg', 'mid-grey',         'none'      ],
        \ [ 'LineNr',              'fg', 'dark-grey',        'none'      ],
        \ [ 'Cursor',              'bg', 'black',            'none'      ],
        \ [ 'Cursor',              'fg', 'clean-white',      'none'      ],
        \ [ 'CursorColumn',        'bg', 'light-grey',       'none'      ],
        \ [ 'CursorLine',          'bg', 'light-grey',       'none'      ],
        \ [ 'Search',              'bg', 'bright-blue',      'none'      ],
        \ [ 'IncSearch',           'fg', 'NONE',             'reverse'   ],
        \ [ 'MatchParen',          'bg', 'hot-pink',         'none'      ],
        \ [ 'MatchParen',          'fg', 'clean-white',      'none'      ],
        \ [ 'StatusLine',          'bg', 'black-green',      'none'      ],
        \ [ 'StatusLine',          'fg', 'clean-white',      'none'      ],
        \ [ 'StatusLineNC',        'bg', 'mid-grey',         'none'      ],
        \ [ 'StatusLineNC',        'fg', 'dark-grey',        'none'      ],
        \ [ 'Todo',                'bg', 'pale-green',       'none'      ],
        \ [ 'Todo',                'fg', 'dark-green',       'none'      ],
        \ [ 'Underlined',          'fg', 'light-blue',       'underline' ],
        \ [ 'SpecialChar',         'fg', 'lavender',         'none'      ],
        \ [ 'htmlTagName',         'fg', 'merlot',           'bold'      ],
        \ [ 'Error',               'bg', 'deep-red',         'none'      ],
        \ [ 'Error',               'fg', 'clean-white',      'none'      ],
        \ [ 'ErrorMsg',            'bg', 'deep-red',         'none'      ],
        \ [ 'ErrorMsg',            'fg', 'clean-white',      'none'      ],
        \ [ 'WarningMsg',          'fg', 'deep-red',         'none'      ],
        \ [ 'NonText',             'fg', 'pure-blue',        'none'      ],
        \ [ 'PMenu',               'bg', 'pale-blue',        'none'      ],
        \ [ 'PMenu',               'fg', 'black',            'none'      ],
        \ [ 'PMenuSbar',           'fg', 'dark-grey',        'none'      ],
        \ [ 'PMenuSel',            'bg', 'grey-blue',        'none'      ],
        \ [ 'PMenuSel',            'fg', 'clean-white',      'none'      ],
        \ [ 'WildMenu',            'bg', 'pale-blue',        'none'      ],
        \ [ 'WildMenu',            'fg', 'black',            'none'      ],
        \ [ 'FoldColumn',          'bg', 'mid-grey',         'none'      ],
        \ [ 'FoldColumn',          'fg', 'deep-blue',        'none'      ],
        \ [ 'Folded',              'bg', 'light-grey',       'none'      ],
        \ [ 'Directory',           'fg', 'deep-blue',        'none'      ],
        \ [ 'ModeMsg',             'fg', 'NONE',             'bold'      ],
        \ [ 'MoreMsg',             'fg', 'dark-green',       'none'      ],
        \ [ 'Question',            'fg', 'black',            'bold'      ],
        \ [ 'SpellBad',            'fg', 'deep-red',         'none'      ],
        \ [ 'SpellCap',            'fg', 'black',            'none'      ],
        \ [ 'SpellLocal',          'fg', 'deep-blue',        'none'      ],
        \ [ 'SpellRare',           'fg', 'merlot',           'none'      ],
        \
        \
        \ [ 'Tag',                 'fg', 'black',            'none'      ],
        \ [ 'SpecialComment',      'fg', 'black',            'none'      ],
        \ [ 'DefinedName',         'fg', 'black',            'none'      ],
        \ [ 'LocalVariable',       'fg', 'black',            'none'      ],
        \ [ 'PreCondit',           'fg', 'black',            'none'      ],
        \ [ 'CTagsClass',          'fg', 'black',            'none'      ],
        \ [ 'CTagsGlobalConstant', 'fg', 'black',            'none'      ],
        \ [ 'CTagsGlobalVariable', 'fg', 'black',            'none'      ],
        \ [ 'CTagsImport',         'fg', 'black',            'none'      ],
        \ [ 'CTagsMember',         'fg', 'black',            'none'      ],
        \ [ 'Debug',               'fg', 'black',            'none'      ],
        \ [ 'DiffAdd',             'fg', 'black',            'none'      ],
        \ [ 'DiffChange',          'fg', 'black',            'none'      ],
        \ [ 'DiffDelete',          'fg', 'black',            'none'      ],
        \ [ 'DiffText',            'fg', 'black',            'none'      ],
        \ [ 'EnumerationName',     'fg', 'black',            'none'      ],
        \ [ 'EnumerationValue',    'fg', 'black',            'none'      ],
        \ [ 'Ignore',              'fg', 'black',            'none'      ],
        \ [ 'Repeat',              'fg', 'black',            'none'      ],
        \ [ 'SignColumn',          'fg', 'black',            'none'      ],
        \ [ 'SpecialKey',          'fg', 'black',            'none'      ],
        \ [ 'TabLine',             'fg', 'black',            'none'      ],
        \ [ 'TabLineFill',         'fg', 'black',            'none'      ],
        \ [ 'TabLineSel',          'fg', 'black',            'none'      ],
        \ [ 'Typedef',             'fg', 'black',            'none'      ],
        \ [ 'Union',               'fg', 'black',            'none'      ],
        \ [ 'pythonBuiltin',       'fg', 'black',            'none'      ],
        \ ]

  for group in groups
    let vimtypes  = {0: 'gui', 1: 'cterm'}
    let termcolor = colors[group[2]]

    for key in keys(vimtypes)
      call s:MacVimThemeHighlight({
            \ 'vimtype': vimtypes[key],
            \ 'where':   group[1],
            \ 'higroup': group[0],
            \ 'color':   key ? termcolor : a:palette[termcolor],
            \ 'style':   group[3]
            \ })
    endfor
  endfor
endf

"" reset everything first
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = 'macvim256'

"" run the code to set the theme
call s:MacVimThemeApply(palette)
