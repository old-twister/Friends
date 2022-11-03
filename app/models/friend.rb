class Friend < ApplicationRecord
  validates :name, presence: true
  validates :surname, presence: true
  validates :email, presence: true, confirmation: true, uniqueness: true
end
