vim-octopress
=============

This provides *multiple* different syntax highlighted regions within an [Octopress](http://octopress.org/) post. If you've attempted to write a post in octopress-flavored Markdown using [inline code blocks](http://octopress.org/docs/blogging/code/), then you know first-hand that your syntax highlighting will be royally screwed up (in vim).

This file provides specific syntax highlighting for:

* Scala
* Ruby
* JavaScript
* Java

Other languages are handled generically.

Install with [vim-pathogen](https://github.com/tpope/vim-pathogen) by copying/cloning/submoduling vim-octopress into .vim/bundle/. Or, you can go the old-school route and copy syntax/octopress.vim into .vim/syntax/.

Set a file to use Octopress syntax highlighting with `:set filetype=octopress`.

If you do not have one of the syntax files (e.g. syntax/scala.vim, which is not bundled with vim), then the code within that block will merely appear as normal text.
