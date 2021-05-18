class Pet < ApplicationRecord
  # associations
  SPECIES = ['otter', 'snake', 'gorilla', 'dog', 'pony', 'platypus']
  validates :found_on, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - found_on).to_i
  end
end
