
 require 'bcrypt'

class User < ActiveRecord::Base
  has_secure_password

    has_many :tasks
    has_many :categories, through: :tasks
    


end