class Task < ApplicationRecord
  belongs_to :user

  has_many :tag_tasks
  has_many :tags, through: :tag_tasks

  has_many :comments

  scope :completed, -> { where(completed: true )}
  scope :in_progress, -> { where(completed: false )}
  scope :with_username, -> { joins(:user).select('tasks.*, users.name as user_name')}

  after_create :log_new_task

  scope :with_comments_count, -> do
    left_joins(:comments)
        .select('tasks.*, count(comments.id) as comments_count')
        .group('tasks.id')
  end

  # allow updating this task's comments
  accepts_nested_attributes_for :comments, allow_destroy: true


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

  def log_new_task
    TasklogJob.perform_later(self)
  end
end











