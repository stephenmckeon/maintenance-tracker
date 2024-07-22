class Task < ApplicationRecord
  belongs_to :category
  has_many :completions

  enum interval: { monthly: "monthly", quarterly: "quarterly", yearly: "yearly" }

  def last_completed_at
    completions.order(:created_at).last&.created_at
  end
end
