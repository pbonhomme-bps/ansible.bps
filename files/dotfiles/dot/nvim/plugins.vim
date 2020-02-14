" Source plugin settings
  for f in split(glob('$HOME/.config/nvim/nvim-config/*.vimrc'), '\n')
    exe 'source' f
  endfor
