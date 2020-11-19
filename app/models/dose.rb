class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient, message: "each cocktail has unique ingredient" }
  belongs_to :cocktail
  belongs_to :ingredient
end
