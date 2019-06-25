# frozen_string_literal: true

class WhalersController < ApplicationController
  before_action :find_whaler
  before_action :find_current_captain
  layout 'whaler'

  def show; end

  protected

  def find_whaler
    @whaler = Whaler.find_by(id: params[:id])
  end

  def find_current_captain
    @captain = Captain.find_by(id: 2)
  end
end
