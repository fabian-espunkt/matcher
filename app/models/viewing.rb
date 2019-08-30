class Viewing < ApplicationRecord
  belongs_to :user
  belongs_to :attendance
  after_save :check_matching, if: :like?

  private

  def check_matching
    MatcherService.check(self)
  end
end
