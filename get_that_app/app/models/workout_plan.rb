class WorkoutPlan < ActiveRecord::Base
  has_many :workouts
  has_and_belongs_to_many :accounts
end
