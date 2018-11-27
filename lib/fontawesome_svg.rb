require 'fontawesome_svg/version'
require 'fontawesome_svg/action_view/helpers' if defined?(ActionView)
require 'fontawesome_svg/engine' if defined?(Rails)
require 'fontawesome_svg/railtie' if defined?(Rails)
if defined? Middleman
  require "middleman-core"

  Middleman::Extensions.register :fontawesome_svg do
    require "middleman-fontawesome_svg/extension"
    MyExtension
  end
end
