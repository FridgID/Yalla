class Tour < ApplicationRecord
  belongs_to :user

  # CATEGORYS=["walk", "food", "beer", "boat", "bike"] # old
  CATEGORYS = {
    walk: "fas fa-walking",
    food: "fas fa-beer",
    beer: "fas fa-bicycle",
    boat: "fas fa-ship",
    bike: "fas fa-utensils"
  }
  validates :category, inclusion: { in: CATEGORYS.keys.map(&:to_s) }
end
