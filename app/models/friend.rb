class Friend < ApplicationRecord
  validates :name, presence: true
  validates :surname, presence: true
  validates :email, presence: true, confirmation: true, uniqueness: true

  enum where_met: %i[other school work holiday party]

  scope :school, -> { where(where_met: :school) }
  scope :work, -> { where(where_met: :work) }
  scope :holiday, -> { where(where_met: :holiday) }

end