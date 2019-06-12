class Task < ApplicationRecord
  scope :completed, -> { where(completed: true )}
  scope :in_progress, -> { where(completed: false )}

  validate :no_bad_words_in_description

  validates :owner, presence: true, length: { minimum: 2 }
  validates :priority, numericality: {
      greater_than_or_equal_to: 0,
      less_than_or_equal_to: 5,
  }

  def no_bad_words_in_description
    if description.include?('python')
      errors.add(:base, "Sorry python is not allowed")
    end
  end
end
