class Task < ApplicationRecord
  belongs_to :category

  enum interval: { monthly: "monthly", quarterly: "quarterly", yearly: "yearly" }
end
