class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :cocktail, uniqueness: { scope: :ingredient,
    message: "one dose per cocktail/ingredient couple" }
end
