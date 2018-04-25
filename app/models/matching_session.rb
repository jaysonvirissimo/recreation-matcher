class MatchingSession < ApplicationRecord
  belongs_to :starting_user, class_name: 'User'
  belongs_to :following_user, class_name: 'User'
end
