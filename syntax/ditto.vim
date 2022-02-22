" Keywords
syntax keyword dittoKeyword module exports
syntax keyword dittoKeyword import as
syntax keyword dittoKeyword type
syntax keyword dittoKeyword foreign

" Literals
syntax match dittoInt "\v<\d+>"
syntax match dittoFloat "\v<\d+\.\d+>"
syntax keyword dittoBool true false
syntax keyword dittoUnit unit
syntax region dittoString start=+"+ end=+"+ skip=+\\"+ contains=@Spell
"      ^^^
" (see :help syn-pattern)

" Names
" NOTE: \< and \> match at word boundaries.
syntax match dittoName "\v<[a-z]\w*>" contained
syntax match dittoProperName "\v<[A-Z]\w*>" contained

" Delimiters
"syntax match dittoDelimiter "[,|.()[\]]"

" Comments
syntax keyword dittoTodo NOTE TODO FIXME XXX contained
syntax match dittoComment "\v--.*$" contains=dittoTodo,@Spell

" (see NAMING CONVENTIONS in :help syn-files)
highlight default link dittoTodo Todo
highlight default link dittoComment Comment
highlight default link dittoConditional Conditional
highlight default link dittoKeyword Keyword
"highlight default link dittoDelimiter Delimiter
highlight default link dittoProperName Type
highlight default link dittoUnusedName Comment
highlight default link dittoHole Debug
highlight default link dittoInt Number
highlight default link dittoFloat Float
highlight default link dittoBool Boolean
highlight default link dittoUnit Identifier
highlight default link dittoString String
highlight default link dittoOperator Operator
