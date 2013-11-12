class User < ActiveRecord::Base
  ROLES = %w{admin manager user}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
