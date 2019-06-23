function! test#ruby#m2x#test_file(file) abort
  return a:file =~# '^test/' && filereadable('scripts/test')
endfunction

function! test#ruby#m2x#build_position(type, position) abort
  if a:type == 'nearest'
    return [a:position['file'].':'.a:position['line']]
  elseif a:type == 'file'
    return [a:position['file']]
  else
    return []
  endif
endfunction

function! test#ruby#m2x#build_args(args) abort
  return a:args
endfunction

function! test#ruby#m2x#executable() abort
  return 'scripts/test'
endfunction
