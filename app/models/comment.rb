class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :party
  belongs_to :comment, optional: true
end
