class Admin::CaptainsController < AdminController
  before_action :find_captain, only: [ :show, :flip_feature ]
  def index
    @captains = Captain.all
  end

  def show
    @features = @captain.features
  end

  def flip_feature
    if @captain.rollout_flip_features(admin_captain_feature_flipping_params)
    redirect_to [:admin, @captain], flash: { success: feature_flipped_success_message }
  else
    redirect_to [:admin, @captain], flash: { warning: 'There was a problem with feature flipping.' }
  end
  end

  protected

  def find_captain
    @captain = Captain.find_by(id: params[:id])
  end

  private

  def feature_flipped_success_message
    # 'Mug Shot' turned off
    msg = 'Sucess! '
    admin_captain_feature_flipping_params.each do |feature, flip|
      feature_name = ROLLOUT.get(feature).data['name']
      status       = (flip != '1') ? 'off' : 'on'
      msg         += "#{feature_name} turned #{status}"
    end
    msg
  end

  def admin_captain_feature_flipping_params
    params.require(:features)
  end
end
