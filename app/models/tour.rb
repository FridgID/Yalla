class Tour < ApplicationRecord
  belongs_to :user

  CATEGORYS=["walk", "food", "beer", "boat", "bike"]
  validates :category, inclusion: { in: CATEGORYS }
end
