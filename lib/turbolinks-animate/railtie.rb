require 'rails/railtie'

module TurbolinksAnimate
    class Railtie < Rails::Railtie

        initializer 'turbolinks-animate.mozaic' do
            Mozaic.configure do |config|
                config.define_component 'turbolinks-animate', element: 'body' do |options|
                    if @turbolinks_animate_animation
                        options[:class] += ( options[:class].length > 0 ? ' turbolinks-animate' : 'turbolinks-animate' )
                        options[:data] ||= {}
                        options[:data][:turbolinks_animate_animation] = @turbolinks_animate_animation
                    end
                end
            end
        end

        initializer 'turbolinks-animate.action_controller' do
            ActiveSupport.on_load :action_controller do
                include TurbolinksAnimateHelper
            end
        end

    end
end
