module ApplicationHelper
  def whaler_image_activated?(whaler)
    ROLLOUT.active?(:whaler_image, whaler)
  end
end
