require 'rails/railtie'
module FontawesomeSvg 
  class Railtie < ::Rails::Railtie
    initializer "fontawesome_svg.action_view" do |app|
      ActiveSupport.on_load :action_view do
        require "fontawesome_svg/action_view/helpers"
        include FontawesomeSvg::ActionView::Helpers
      end
    end
  end
end

