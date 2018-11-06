class Tour < ApplicationRecord
  belongs_to :user

  CATEGORYS=["walk", "food", "beer", "boat", "bike"]
end
