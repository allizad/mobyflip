module ApplicationHelper
  def whaler_image_activated?(captain)
    ROLLOUT.active?(:whaler_image, captain)
  end

  def recruitment_activated?(captain)
    ROLLOUT.active?(:recruit, captain)
  end

end
