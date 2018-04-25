class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :matching_session
  belongs_to :activity

  validates :value, inclusion: { in: -3..3 }
end
