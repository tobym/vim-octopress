" Vim syntax file
" Language:	Octopress/Jekyll (this is Markdown with some additions)
" Maintainer:	Toby Matejovsky <toby.matejovsky@gmail.com>
" URL:		
" Version:	1
" Last Change:  2011 Dec 11
" Remark:	Uses mkd.vim syntax file, and a bunch of other syntax files.
" Remark:	This makes it possible to embed language-specific syntax
"               highlighting within codeblocks.

runtime! syntax/mkd.vim

unlet b:current_syntax

syntax include @Scala      syntax/scala.vim
syn region embeddedScala matchgroup=Snip      start="^{%\s.*codeblock\s.*lang:scala\s.*%}"      end="^{%\s.*endcodeblock\s.*%}" contains=@Scala

unlet b:current_syntax

syntax include @Ruby       syntax/ruby.vim
syn region embeddedRuby  matchgroup=Snip     start="^{%\s.*codeblock\s.*lang:ruby\s.*%}"       end="^{%\s.*endcodeblock\s.*%}" contains=@Ruby

unlet b:current_syntax

syntax include @JavaScript syntax/javascript.vim
syn region embeddedJavaScript  matchgroup=Snip start="^{%\s.*codeblock\s.*lang:javascript\s.*%}" end="^{%\s.*endcodeblock\s.*%}" contains=@JavaScript

unlet b:current_syntax

syntax include @Java syntax/java.vim
syn region embeddedJava  matchgroup=Snip start="^{%\s.*codeblock\s.*lang:java\s.*%}" end="^{%\s.*endcodeblock\s.*%}" contains=@Java

unlet b:current_syntax

" For yaml front matter
syntax include @Yaml syntax/yaml.vim
syn region embeddedYaml  matchgroup=Snip start="^---" end="^---" contains=@Yaml


syn region embeddedGenericCode  matchgroup=Snip start="^{%\s.*codeblock\s*\( lang:\)\@!\s*%}"  end="^{%\s.*endcodeblock\s.*%}" contains=@String
hi def link embeddedGenericCode mkdCode

hi link Snip SpecialComment
let b:current_syntax = 'multisyntax'
