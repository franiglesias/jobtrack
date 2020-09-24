class Application < ApplicationRecord
  validates :company, presence: true, length: {minimum: 3}
  validates :position, presence: true, length: {minimum: 3}
end
