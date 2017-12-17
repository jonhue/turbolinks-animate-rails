module TurbolinksAnimateHelper

    def turbolinks_animate animation
        @turbolinks_animate_animation = animation.is_a?(Hash) ? animation.to_json : animation
    end

    def turbolinks_animate_body options = {}, &block
        default_options = {
            class: '',
            data: {}
        }
        options = default_options.merge options
        if @turbolinks_animate_animation
            options[:class] += ( options[:class].length > 0 ? ' turbolinks-animate' : 'turbolinks-animate' )
            options[:data][:turbolinks_animate_animation] = @turbolinks_animate_animation
        end
        if block_given?
            content_tag 'body', capture(&block), options
        else
            content_tag 'body', options
        end
    end

end
