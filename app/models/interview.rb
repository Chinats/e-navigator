class Interview < ApplicationRecord
  belongs_to :user
  validates :candidate, presence: true
  enum approval: { pending: 0, approval: 1, rejected: 2 }
end
