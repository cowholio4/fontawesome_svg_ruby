# Require core library
require 'middleman-core'

# Extension namespace
class MyExtension < ::Middleman::Extension
  include Padrino::Helpers::TagHelpers
  include Padrino::Helpers::OutputHelpers
  option :fa_path, nil, 'Font Awesome Path'
  expose_to_template :fa_inline_svg

  def initialize(app, options_hash={}, &block)
    # Call super to build options from the options_hash
    super

    # puts options.my_option
  end

  def fa_inline_svg(group=nil, name=nil, html_options=nil)
    svg_class = html_options.present? ? html_options.fetch(:class, '') : ''
    base_class = 'svg-inline--fa '
    content_tag(:span, class: base_class + svg_class) do  
      root = File.expand_path('../' , File.dirname(__dir__))
      file_path = File.join(root, 'assets', 'svg', group, name + ".svg").to_s
      IO.binread(file_path).html_safe
    end
  end
end
