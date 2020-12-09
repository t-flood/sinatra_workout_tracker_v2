class Exercise < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :reps, presence: true
  validates :sets, presence: true
  validates :date, presence: true
end
