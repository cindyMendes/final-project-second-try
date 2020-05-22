class User < ApplicationRecord
  has_many :dog

  def full_name
   "#{first_name} #{last_name}"
 end
 
end
