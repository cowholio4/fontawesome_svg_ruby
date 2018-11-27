# frozen_string_literal: true
module Bootstrap
  module Rails
    class Engine < ::Rails::Engine
      initializer 'fontawesome_svg.assets' do |app|
        %w(stylesheets).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
