class Task < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :tags

  enum state: %i[pending doing done]
  enum priority: %i[high medium low]
end
