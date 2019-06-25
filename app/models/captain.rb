class Captain < ApplicationRecord
  def features
    ROLLOUT.features.map { |feature|
      [feature, {
        status: ROLLOUT.active?(feature, self),
        data:   ROLLOUT.get(feature).data,
      }]
    }.to_h
  end

  def rollout_flip_features(feature_params)
    feature_params.each do |feature, flip|
      rollout_update_feature(feature.to_sym, flip == '1')
    end
  end

  def rollout_update_feature(feature, flip)
    raise "#{feature} is not a valid feature." unless ROLLOUT.features.include?(feature)

    if flip
      logger.info "activating #{feature} for Captain #{name}"
      ROLLOUT.activate_user(feature, self)
    else
      logger.info "deactivating #{feature} for Captain #{name}"
      ROLLOUT.deactivate_user(feature, self)
    end
    flip
  rescue => e
    raise "There was an issue flipping #{feature} for #{name}"
  end
end
