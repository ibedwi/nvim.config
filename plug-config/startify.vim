let ascii_slant = [
      \'     _ __        ',
      \'    (_) /_  ___  ',
      \'   / / __ \/ _ \ ',
      \'  / / /_/ /  __/ ',
      \' /_/_.___/\___/  ',
      \'',
      \]

let g:ascii = ascii_slant
" Quotes to display on startify
let g:startify_custom_header_quotes = [
  \ ['Separation of concern'],
  \ ["You can't be everything, but you can be anything"],
  \ ["cuan yuk"],
  \ ["belajar jadi lebih baik dan berguna untuk orang lain"]
  \ ]

let g:startify_custom_header = startify#pad(g:ascii + startify#fortune#boxed())



