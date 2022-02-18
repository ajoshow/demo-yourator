class Job < ApplicationRecord
  belongs_to :company
  validates :name, presence: true, length: {minimum: 2, maximum: 100}
end
