class Lesson < ActiveRecord::Base
  belongs_to :course
  has_many :lesson_payments

#  TODO: ADD A WAY FOR THE ADMIN TO ADD STUDENTS TO A PARTICULAR LESSON...
# ...THE SELECT SHOULD ONLY HAVE STUDENTS THAT HAVE PAID AND ONLY FOR A RESPECTIVE LESSON/COURSE


end
