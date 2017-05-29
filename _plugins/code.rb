module Jekyll
  class RenderTimeTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
   		"<script src='https://cdn.rawgit.com/google/code-prettify/master/loader/run_prettify.js'></script><pre class='prettyprint'>#{@text}</pre>"
      
    end
  end
end

Liquid::Template.register_tag('code', Jekyll::RenderTimeTag)