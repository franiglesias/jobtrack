class Application < ApplicationRecord
  has_many :events, dependent: :destroy

  validates :company, presence: true, length: {minimum: 3}
  validates :position, presence: true, length: {minimum: 3}
end
