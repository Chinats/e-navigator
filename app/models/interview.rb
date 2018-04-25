class Interview < ApplicationRecord
  belongs_to :user
  validates :candidate, presence: true
  enum approval: { pending: 0, approved: 1, rejected: 2 }
end
