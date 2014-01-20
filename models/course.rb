class Course < ActiveRecord::Base
  has_many :payments
  has_many :lessons
  has_many :lesson_payments
end
