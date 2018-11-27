require 'action_view/helpers'
require 'action_view/context'

module FontawesomeSvg 
  module ActionView
    module Helpers
      def fa_svg(name=nil, options=nil, html_options=nil)
        svg_class = html_options.present? ? html_options.fetch(:class, '') : ''
        content_tag(:svg, class: svg_class) do
            content_tag(:use, nil, 'xlink:href': "#{name}")
        end 
      end
      def fa_inline_svg(group=nil, name=nil, html_options=nil)
        svg_class = html_options.present? ? html_options.fetch(:class, '') : ''
        base_class = 'svg-inline--fa '
        content_tag(:span, class: base_class + svg_class) do  
          root = File.expand_path('../../' , File.dirname(__dir__))
          file_path = File.join(root, 'assets', 'svg', group, name + ".svg").to_s
          IO.binread(file_path).html_safe
        end
      end
    end
  end
end
