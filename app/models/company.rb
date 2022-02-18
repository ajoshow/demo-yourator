class Company < ApplicationRecord
  has_many :jobs
  validates :name, presence: true, length: {minimum: 2, maximum: 100}
end
