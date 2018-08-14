# frozen_string_literal: true

require 'rails/railtie'
require 'mozaic'

module TurbolinksAnimate
  class Railtie < Rails::Railtie
    initializer 'turbolinks-animate.mozaic' do
      Mozaic.configure do |config|
        config.define_component('turbolinks-animate',
                                element: 'body') do |options|
          animation = options.delete :animation
          return options unless animation

          options[:class] = [options[:class], 'turbolinks-animate'].compact
                                                                   .join(' ')
          options[:data] ||= {}
          options[:data][:turbolinks_animate_animation] = animation
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
