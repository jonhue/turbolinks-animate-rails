require 'rails/railtie'

module TurbolinksAnimate
    class Railtie < Rails::Railtie

        initializer 'turbolinks-animate.action_controller' do
            ActiveSupport.on_load :action_controller do
                include TurbolinksAnimateHelper
            end
        end

    end
end
