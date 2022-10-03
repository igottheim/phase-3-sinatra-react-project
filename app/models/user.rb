
 require 'bcrypt'

class User < ActiveRecord::Base
    has_many :tasks
    has_many :categories, through: :tasks
    
    # users.password_hash in the database is a :string
  include BCrypt

  def login
    user = User.find_by(first_name: params[:first_name])
    if user.password == params[:password]
      give_token
    else
      redirect_to home_url
    end
  end

end