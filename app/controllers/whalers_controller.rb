class WhalersController < ApplicationController
  layout 'whaler'
  def show
    @whaler = Whaler.all.sample(1).first
  end
end
