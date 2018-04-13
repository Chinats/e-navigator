class Interview < ApplicationRecord
  belongs_to :user
  validates :candidate, presence: true
end
