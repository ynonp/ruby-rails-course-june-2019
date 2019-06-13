class Task < ApplicationRecord
  scope :completed, -> { where(completed: true )}
  scope :in_progress, -> { where(completed: false )}

  belongs_to :user

  has_many :tag_tasks
  has_many :tags, through: :tag_tasks

  has_many :comments


  validate :no_bad_words_in_description

  validates :priority, numericality: {
      greater_than_or_equal_to: 0,
      less_than_or_equal_to: 5,
  }

  def no_bad_words_in_description
    if description.include?('python')
      errors.add(:base, "Sorry python is not allowed")
    end
  end

  def comments_with_usernames
    comments.joins(:user).select('comments.*, users.name as username')
  end
end











