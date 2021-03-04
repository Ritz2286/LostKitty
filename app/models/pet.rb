class Pet < ApplicationRecord
  SPECIES = ['Dog', 'Cat', 'Hamster', 'Parrot', 'Bear', 'Pufferfish']
  validates :name, presence: true
  validates :address, presence: true
  validates :found_on, presence: true
  validates :species, presence: true, inclusion: { in: SPECIES, message: "%{value} is not a valid species" }
end
