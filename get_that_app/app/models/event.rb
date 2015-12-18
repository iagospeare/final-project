class Event < ActiveRecord::Base
  has_one :user
  has_one :workout
end
