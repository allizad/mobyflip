class Whaler < ApplicationRecord
  def recruit_score
    (strength/1.1 * skill).ceil
  end
end
