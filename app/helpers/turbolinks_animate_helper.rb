# frozen_string_literal: true

module TurbolinksAnimateHelper
  def turbolinks_animate(animation)
    @turbolinks_animate_animation = turbolinks_animate_animation(animation)
  end

  private

  def turbolinks_animate_animation(animation)
    return animation.to_json if animation.is_a?(Hash)
    animation
  end
end
