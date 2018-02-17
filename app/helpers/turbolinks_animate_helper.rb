module TurbolinksAnimateHelper

    def turbolinks_animate animation
        @turbolinks_animate_animation = animation.is_a?(Hash) ? animation.to_json : animation
    end

end
