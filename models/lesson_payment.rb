class LessonPayment < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :payment

end
