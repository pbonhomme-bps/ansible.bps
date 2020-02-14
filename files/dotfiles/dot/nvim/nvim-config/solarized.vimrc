" Colorscheme Settings  ----------------------------------------------------------{{{
  "if has('gui_macvim')
  "    colorscheme base16-isotope
  "  " Use large font by default in MacVim
  "    set guifont=PragmataPro:h16
  "else
  "    colorscheme base16-default
  "endif
  set termguicolors
  set background=dark
  colorscheme NeoSolarized
  " default value is "normal", Setting this option to "high" or "low" does use the 
  " same Solarized palette but simply shifts some values up or down in order to 
  " expand or compress the tonal range displayed.
  "let g:neosolarized_contrast = "normal"
  " Special characters such as trailing whitespace, tabs, newlines, when displayed 
  " using ":set list" can be set to one of three levels depending on your needs. 
  " Default value is "normal". Provide "high" and "low" options.
  "let g:neosolarized_visibility = "low"
  " I make vertSplitBar a transparent background color. If you like the origin solarized vertSplitBar
  " style more, set this value to 0.
  "let g:neosolarized_vertSplitBgTrans = 0
  " If you wish to enable/disable NeoSolarized from displaying bold, underlined or italicized 
  " typefaces, simply assign 1 or 0 to the appropriate variable. Default values:  
  "let g:neosolarized_bold = 1
  "let g:neosolarized_underline = 1
  "let g:neosolarized_italic = 1
" }}}
"let g:solarized_use16 = 1
"let g:solarized_visibility="high"
"let g:solarized_diffmode="bold"
"let g:solarized_statusline="normal"
"let g:solarized_term_italics=1
"let g:solarized_termtrans=1
