class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
    :first_name, :last_name, :role

  ROLES = %w[user admin]

  validates :first_name, :last_name, :presence=>true
  validates :role, :inclusion => { :in => User::ROLES,
    :message => "%{value} is not a valid role" }


  def role?(base_role)
    ROLES.index(base_role.to_s) <= ROLES.index(role)
  end

end
