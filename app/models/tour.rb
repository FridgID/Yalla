class Tour < ApplicationRecord
  belongs_to :user
  has_many :reviews

  # CATEGORYS=["walk", "food", "beer", "boat", "bike"] # old
  CATEGORYS = {
    walk: "fas fa-walking",
    food: "fas fa-utensils",
    beer: "fas fa-beer",
    boat: "fas fa-ship",
    bike: "fas fa-bicycle"
  }
  validates :category, inclusion: { in: CATEGORYS.keys.map(&:to_s) }
end
