class Comment < ApplicationRecord
  belongs_to :task
  belongs_to :user
  accepts_nested_attributes_for :user
end
