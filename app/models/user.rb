class User < ApplicationRecord

  validates_uniqueness_of :username
  validates_length_of :password, minimum: 6

end
