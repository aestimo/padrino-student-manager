class Payment < ActiveRecord::Base
  belongs_to :course
  belongs_to :account

end
